// TwoButtonPoll.c
// Runs on LM4F120/TM4C123
// Use polled interrupts to respond to two button presses.  Note
// that button bouncing is not addressed.
// Daniel Valvano
// September 12, 2013

/* This example accompanies the book
   "Embedded Systems: Introduction to ARM Cortex M Microcontrollers"
   ISBN: 978-1469998749, Jonathan Valvano, copyright (c) 2015
   Volume 1, Program 9.6
   
   "Embedded Systems: Real Time Interfacing to ARM Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
   Volume 2, Example 5.1, Program 5.8

 Copyright 2015 by Jonathan W. Valvano, valvano@mail.utexas.edu
    You may use, edit, run or distribute this file
    as long as the above copyright notice remains
 THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED
 OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF
 MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.
 VALVANO SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,
 OR CONSEQUENTIAL DAMAGES, FOR ANY REASON WHATSOEVER.
 For more information about my classes, my research, and my books, see
 http://users.ece.utexas.edu/~valvano/
 */

// momentary, positive logic button connected to PE4 (trigger on rising edge)
// momentary, positive logic button connected to PE5 (trigger on rising edge)

#include <stdint.h>
#include "../inc/tm4c123gh6pm.h"
#include "Timer1.h"
#define NVIC_EN0_INT4           0x00000010  // Interrupt 4 enable

void (*PeriodicTask)(void);   // user function

void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode

// global variables visible in Watch window of debugger
// set when corresponding button pressed
volatile uint32_t SW1, SW2, SW3, SW4; // semaphores

void Buttons_Arm(void) {
    GPIO_PORTE_ICR_R = 0x3E;    // clear flag6-4
    GPIO_PORTE_IM_R |= 0x3E;    // enable interrupt on PE6-4
                              // GPIO PortE=priority 2
    NVIC_PRI1_R = (NVIC_PRI1_R&0xFFFFFF00)|0x00000040; // bits 5-7
    NVIC_EN0_R = NVIC_EN0_INT4; // enable interrupt 4 in NVIC
}

void Buttons_Init(void(*task)(void)) {
    PeriodicTask = task;          // user function
    SYSCTL_RCGCGPIO_R |= 0x00000010; // activate port E
    SW1 = 0;                    // clear semaphores
    SW2 = 0;
	SW3 = 0;
	SW4 = 0;
    GPIO_PORTE_AMSEL_R &= ~0x3E;// disable analog function on PE5-2
    GPIO_PORTE_PCTL_R &= ~0x00FFFFF0; // configure PE5-4 as GPIO <-- activate PE6???
    GPIO_PORTE_DIR_R &= ~0x3E;  // make PE6-4 in
    GPIO_PORTE_AFSEL_R &= ~0x3E;// disable alt funct on PE6-4
    GPIO_PORTE_DEN_R |= 0x3E;   // enable digital I/O on PE6-4
    GPIO_PORTE_IS_R &= ~0x3E;   // PE6-4 is edge-sensitive
    GPIO_PORTE_IBE_R &= ~0x3E;  // PE6-4 is not both edges
    GPIO_PORTE_IEV_R |= 0x3E;   // PE6-4 rising edge event
    Buttons_Arm();
}
void GPIOPortE_Handler(void){
	GPIO_PORTE_IM_R &= ~0x3E;     // disarm interrupt on PF4

    if(GPIO_PORTE_RIS_R&0x02){  // poll PE4
        GPIO_PORTE_ICR_R = 0x02;  // acknowledge flag4
        SW1 = 1;                  // signal SW1 occurred
    }
    if(GPIO_PORTE_RIS_R&0x20){  // poll PE5
        GPIO_PORTE_ICR_R = 0x20;  // acknowledge flag5
        SW2 = 1;                  // signal SW2 occurred
    }
    if(GPIO_PORTE_RIS_R&0x04){  // poll PE2
        GPIO_PORTE_ICR_R = 0x04;  // acknowledge flag6
        SW3 = 1;                  // signal SW3 occurred
    }
    if(GPIO_PORTE_RIS_R&0x08){  // poll PE3
        GPIO_PORTE_ICR_R = 0x08;  // acknowledge flag6
        SW4 = 1;                  // signal SW4 occurred
    }
	
	(*PeriodicTask)(); 
	Timer1_Init();
}

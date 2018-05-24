// ADCTestMain.c
// Runs on TM4C123
// This program periodically samples ADC channel 0 and stores the
// result to a global variable that can be accessed with the JTAG
// debugger and viewed with the variable watch feature.
// Daniel Valvano
// September 5, 2015

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015

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

// center of X-ohm potentiometer connected to PE3/AIN0
// bottom of X-ohm potentiometer connected to ground
// top of X-ohm potentiometer connected to +3.3V 
#include <stdint.h>
#include <time.h>
#include "tm4c123gh6pm.h"
#include "PLL.h"
#include "ST7735.h" 
#include "LCD.h"
#include "SysTick.h"
#include "Switch.h"
#include "Sound.h"

#define PF2             (*((volatile uint32_t *)0x40025010))
#define PF1             (*((volatile uint32_t *)0x40025008))
void DisableInterrupts(void); // Disable interrupts
void EnableInterrupts(void);  // Enable interrupts
long StartCritical (void);    // previous I bit, disable interrupts
void EndCritical(long sr);    // restore I bit to previous value
void WaitForInterrupt(void);  // low power mode

//state 0: clock; state 1: set time; state 2: alarm; state 3: alarm on; state 4: stopwatch
int state = 0;
int current_min = 0;
int	alarm_min = 0;
int temp_current = 0;
int temp_alarm = 0;
int current_stop = 0;
int stop_state = 0;
int temp_min = 0;
int timeout = 0;
int snooze = 0;

//SW1: mode; SW2: increase; SW3: decrease; SW4: confirm
void button_press(void) {
	timeout = 0;
	
	// GPIO_PORTF_DATA_R ^= 0x04;       // toggle PF2
	// alarm ringing
	if (state == 3) {
		if (SW2) {
			state = 0;
			snooze++;
			alarm_min = current_min + 10; // snooze for 10 minutes
		}
		else if (SW3) {
			state = 0;
			snooze = 0;
			toggleAlarm(0,0);
		}
	}
	
	// stopwatch
	else if (state == 4) {
		if (SW1) {
			current_stop = 0;
			state = 0;
			setMode(0);
			current_min += temp_min;
			temp_min = 0;
			printClock(current_min);
		}
		
		else if (SW3) {
			current_stop = 0;
			clearScreen();
			setMode(4);
			printStopwatch(current_stop, 2);
		}
		else if (SW2) {
			printStopwatch(current_stop, 1);
		}
		else if (SW4) {
			stop_state = (stop_state + 1)%2;
		}
	}
	
	// home mode
	else if (state == 0) {
		if (SW1) {
			state = 1;
			setMode(1);
			printClock(temp_current);
		}
		
		if (SW4) {
			if (alarm_min > 0) {
				alarm_min = 0;
				toggleAlarm(0,0);
			}
		}
	}
	
	else if (state == 1) {
		if (SW1) {
			state = 2;
			setMode(2);
			printClock(temp_alarm);
		}
		else {
			if (SW2) {
				temp_current++;
			}
			else if (SW3) {
				if (temp_current > 0) {
					temp_current--;
				}
			}
			else if (SW4) {
				current_min = temp_current;
			}
			setMode(1);
			printClock(temp_current);
		}
	}
	
	else if (state == 2) {
		if (SW1) {
			state = 4;			
			ST7735_FillRect(0, 0, 128, 150, ST7735_Color565(0, 0, 0));
			setMode(4);
			printStopwatch(current_stop, 0);
		}
		else {
			if (SW2) {
				temp_alarm++;
			}
			else if (SW3) {
				if (temp_alarm > 0) {
					temp_alarm--;
				}
			}
			else if (SW4) {
				if (alarm_min == 0) {
					alarm_min = temp_alarm;
					toggleAlarm(alarm_min, 1);
				}
				else {
					alarm_min = 0;
					toggleAlarm(0, 0);
				}
				// print alarm on
			}
			setMode(2);
			printClock(temp_alarm);
		}
	}

	SW1 = 0;
	SW2 = 0;
	SW3 = 0;
	SW4 = 0;

}

void systick(void) {
	timeout++;
	if (state == 0 || state == 3) {
		current_min++;
		setMode(0);
		printClock(current_min);
	}
	else {
		if (state == 4) {
			if (stop_state == 1) {
				current_stop++;
				setMode(4);
				printStopwatch(current_stop, 0);
			}
		}
		
		temp_min++;
	}
	
	if (current_min == alarm_min && alarm_min != 0) {
		state = 3;
	}
}

int main(void){
  PLL_Init(Bus80MHz);                   // 80 MHz
  ST7735_InitR(INITR_REDTAB);
  ST7735_FillScreen(ST7735_BLACK);
  SYSCTL_RCGCGPIO_R |= 0x22;            // activate port F and port B
	
  DisableInterrupts();
	SysTick_Init(&systick);
	Buttons_Init(&button_press);
	Sound_Init();
		
	GPIO_PORTB_DIR_R |= 0x4C;
	GPIO_PORTB_DEN_R |= 0x4C;	
	
	GPIO_PORTF_DIR_R |= 0x06;             // make PF2, PF1 out (built-in LED)
  GPIO_PORTF_AFSEL_R &= ~0x06;          // disable alt funct on PF2, PF1
  GPIO_PORTF_DEN_R |= 0x06;             // enable digital I/O on PF2, PF1
                                        // configure PF2 as GPIO
  GPIO_PORTF_PCTL_R = (GPIO_PORTF_PCTL_R&0xFFFFF00F)+0x00000000;
  GPIO_PORTF_AMSEL_R = 0;               // disable analog functionality on PF
  EnableInterrupts();
  
	setMode(0);
	printClock(0);
	state = 0;
	clearScreen();
	
	while(1) {
		
		GPIO_PORTF_DATA_R ^= 0x04;       // toggle PF2
    
		if(timeout >= 30 && state != 0 && state != 4) {
				current_min += temp_min;
				temp_min = 0;
				state = 0;
				setMode(0);
				printClock(current_min);
				timeout = 0;
		}
		
		if (state == 3) {
			// alarm sound;
			
			if (snooze == 0) {
				GPIO_PORTB_DATA_R |= 0x04;
			}
			else if (snooze == 1) {
				GPIO_PORTB_DATA_R |= 0x08;
			}	
			else if ( snooze >= 2) {
				GPIO_PORTB_DATA_R |= 0x40;
			}
			Sound_Start();
		}
		
		else {
			// alarm sound off;
			GPIO_PORTB_DATA_R &= 0x00;
			Sound_Stop();
		}
	}
	
	
}


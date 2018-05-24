// PWMtest.c
// Runs on TM4C123
// Use PWM0/PB6 and PWM1/PB7 to generate pulse-width modulated outputs.
// Daniel Valvano
// March 28, 2014

/* This example accompanies the book
   "Embedded Systems: Real Time Interfacing to Arm Cortex M Microcontrollers",
   ISBN: 978-1463590154, Jonathan Valvano, copyright (c) 2015
   Program 6.8, section 6.3.2

   "Embedded Systems: Real-Time Operating Systems for ARM Cortex M Microcontrollers",
   ISBN: 978-1466468863, Jonathan Valvano, copyright (c) 2015
   Program 8.4, Section 8.3

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
#include <stdint.h>
#include "PLL.h"
#include "PWM.h"
#include "ST7735Addon.h"
#include "Tach.h"
#include "ST7735.h"
#include "Switch.h"

void WaitForInterrupt(void);  // low power mode
int Xstar;

//SW1: mode; SW2: increase; SW3: decrease; SW4: confirm
void button_press(void) {
	if(SW1 == 1) {
		//increase speed
		if(Xstar + 50 <= 400) {
			Xstar += 50;
		}
		
	} else if(SW2 == 1) {
		//decrease speed
		if(Xstar - 50 >= 0) {
			Xstar -= 50;
		}
	}

	SW1 = 0;
	SW2 = 0;

}

void startScreen() {
	ST7735_SetCursor(0,0); ST7735_OutString("Motor Lab");
	ST7735_PlotClear(0,400); // range from 0 to 4095
	ST7735_SetCursor(0,1); ST7735_OutString("Xstar=");
	ST7735_SetCursor(0,2); ST7735_OutString("Speed=");
}

int j = 0;
int N = 100;
int fs = 20;

void updateDisplay(int data) {
	ST7735_SetCursor(3,1); 	
	ST7735_OutString("     ");
	ST7735_SetCursor(3,1); 	
	ST7735_OutUDec(Xstar/10); // 0 to 400
	ST7735_SetCursor(3,2);
	ST7735_OutString("     ");
	ST7735_SetCursor(3,2);
	ST7735_OutUDec(data/10); // 0.1 rps
	ST7735_OutString(".");
	ST7735_OutUDec(data%10);
}

void draw(int data) {
	ST7735_PlotNextErase(); // overwrites N points on same line
	ST7735_PlotPoint(data); // Measured temperature
	if((j%fs)==0) { // fs sampling, 1 Hz display of numerical data
		updateDisplay(data);
	}
	j++;
}

int main(void){
  PLL_Init(Bus80MHz);               // bus clock at 80 MHz
  //PWM0A_Init(40000, 30000);         // initialize PWM0, 1000 Hz, 75% duty
	initTach();
  PWM0B_Init(40000, 30000);         // initialize PWM0, 1000 Hz, 25% duty
	Xstar = 300;
//  PWM0_Duty(4000);    // 10%
//  PWM0_Duty(10000);   // 25%
//  PWM0_Duty(30000);   // 75%

//  PWM0_Init(4000, 2000);         // initialize PWM0, 10000 Hz, 50% duty
//  PWM0_Init(1000, 900);          // initialize PWM0, 40000 Hz, 90% duty
//  PWM0_Init(1000, 100);          // initialize PWM0, 40000 Hz, 10% duty
//  PWM0_Init(40, 20);             // initialize PWM0, 1 MHz, 50% duty
  while(1){
		draw(getTach());
    //WaitForInterrupt();
  }
}

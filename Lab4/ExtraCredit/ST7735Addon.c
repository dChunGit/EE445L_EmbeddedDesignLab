/*
 * Grace Zhuang (gpz68) and David Chun (dc37875)
 * 15655, T/TH 12:30-2:00
 * TA: Josh Minor
 * Lab 4
 */

#include <stdio.h>
#include <stdint.h>
#include "ST7735.h"
#include "../inc/tm4c123gh6pm.h"

int absolute(int v) {
		if(v < 0) {
			return -v;
		} else return v;
}

void ST7735_BLine(int x0, int y0, int x1, int y1, uint16_t color, int clear) {
	
  int dx =  absolute(x1 - x0), dy = -absolute(y1 - y0);
  int sx = x0 < x1 ? 1 : -1, sy = y0 < y1 ? 1 : -1; 
  int error = dx + dy, change_e;
 
  while(x0 != x1 || y0 != y1) {
    //printf("(%d, %d)\n", x0 + 64, 96 - y0);
		ST7735_DrawPixel(x0 + 64, 96 - y0, color);
    change_e = 2 * error;
		
    if(change_e >= dy) {
				error += dy; 
				x0 += sx;
		}
		
    if(change_e <= dx) {
				error += dx;
				y0 += sy;
		}
  }
}

void ST7735_ClockNumerals(const uint16_t *image, uint16_t color) {
		ST7735_DrawBitmap(24, 135, image, 80, 80);
}


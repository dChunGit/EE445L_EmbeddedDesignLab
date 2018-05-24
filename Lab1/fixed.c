#include <stdio.h>
#include <stdint.h>
#include "ST7735.h"
#include "tm4c123gh6pm.h"

int MaxX;
int MinX;
int MaxY;
int MinY;

void ST7735_sDecOut2(int32_t number) {
	FILE *file;
	int neg = 0, oob = 0;
	
	if(number < 0) {
		neg = 1;
		number = number * -1;
	}

	if(number >= 10000 || number <= -10000) {
		oob = 1;
	}
	
	int digits = (number/1000 > 0) ? 4 : 3;
	int power = 10000;
	int a;
	
	for(a = 4; a > 0; a--) {
		if(a == digits) {
			if(neg) {
				fputc('-', file);
			} else fputc(' ', file);
		}
		
		if(oob) {
			fputc('*', file);
		} else {
			power /= 10;
			int digit = number / power;
			if(digits == 3 && a == 4) {
				fputc(' ', file);
			} else fputc(digit + '0', file);
			number %= power;
		}
		
		if(a == 3) {
			fputc('.', file);
		}
	}
}

void ST7735_uBinOut6(int32_t number) {
	FILE *file;
	int hflag, first = 0, second = 0;
	
	if(number < 64000) {
		first = number/64;
		if(first > 100) {
			fputc(first/100 + '0', file);
			first %= 100;
			hflag = 1;
		} else fputc(' ', file);
		
		if(first > 10 || hflag) {
			fputc(first/10 + '0', file);
			first %= 10;
		} else fputc(' ', file);
		fputc(first + '0', file);
		fputc('.', file);
		
		second = (((number%64)*100)+32)/64;
		fputc(second/10 + '0', file);
		fputc(second%10 + '0', file);
	} else {
			fputc('*', file);
			fputc('*', file);
			fputc('*', file);
			fputc('.', file);
			fputc('*', file);
			fputc('*', file);
	}
}

void ST7735_XYplotInit(char *title, int32_t minX, int32_t maxX, int32_t minY, int32_t maxY) {
	MaxX = maxX;
	MaxY = maxY;
	MinX = minX;
	MinY = minY;
	
	ST7735_FillScreen(0);  // set screen to black
	ST7735_SetCursor(0,0);
	ST7735_OutString(title);
	ST7735_DrawFastVLine(64, 32, 128, ST7735_Color565(255, 0, 0));
	ST7735_DrawFastHLine(0, 32+64, 128, ST7735_Color565(255, 0, 0));
}

void ST7735_XYplot(uint32_t num, int32_t bufX[], int32_t bufY[]) {

	for (int i = 0; i < num; i++) {
		
		int a = (127*(bufX[i]-MinX))/(MaxX-MinX);
		int b = 32+(127*(MaxY-bufY[i]))/(MaxY-MinY);

		ST7735_DrawPixel(a, b, ST7735_Color565(255, 255, 255)); 
	}
}


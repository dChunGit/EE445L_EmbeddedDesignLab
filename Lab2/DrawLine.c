//************* ST7735_Line********************************************
// Draws one line on the ST7735 color LCD
// Inputs: (x1,y1) is the start point
// (x2,y2) is the end point
// x1,x2 are horizontal positions, columns from the left edge
// must be less than 128
// 0 is on the left, 126 is near the right
// y1,y2 are vertical positions, rows from the top edge
// must be less than 160
// 159 is near the wires, 0 is the side opposite the wires
// color 16-bit color, which can be produced by ST7735_Color565()
// Output: none
void ST7735_Line(uint16_t x1, uint16_t y1, uint16_t x2, uint16_t y2, uint16_t color) {
	uint16_t high = x1, low = x2;
	if(x2 > x1) {
		high = x2;
		low = x1;
	}

	//y2-y1 = m(x2-x1)
	uint16_t slope = (y2-y1)/(x2-x1);

	for(int a = low; a < high + 1; a++) {
		uint16_t newY = slope(a - x1) + y1;
		ST7735_DrawPixel(a, newY, color);
	}
}
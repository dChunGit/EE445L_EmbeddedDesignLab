extern int SW1, SW2, SW3, SW4;

/*
* Init switches
*/
void Buttons_Init(void(*task)(void));
void GPIOPortE_Handler(void);

/*
* Debounce
*/
void Buttons_Arm(void);

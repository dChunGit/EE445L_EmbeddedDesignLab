extern int SW1, SW2, SW3, SW4;

void Buttons_Init(void(*task)(void));
void GPIOPortE_Handler(void);
void Buttons_Arm(void);

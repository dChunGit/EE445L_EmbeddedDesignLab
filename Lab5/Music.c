// Music.c
//SysTick handles frequency changes

#include <stdint.h>
#include "Dac.h"
#include "../inc/tm4c123gh6pm.h"
#include "SysTick.h"
#include "Music.h"
#include "Timer0A.h"

int m_pointer = 0;
Music cMusic;
extern int space;
extern int fade_flag;
extern int noteCounter;

int fader = 0;

void Sound_Init(uint32_t period){
	DAC_Init();          // Port B is DAC
  m_pointer = 0;
	SysTick_Init(period);
	
	//not correct, need to change to duration of shortest note
	Timer0A_Init(40000000);
}

void Sound_Play(uint32_t period, Music m){
	cMusic = m;
	Sound_Init(period);
}

void Sound_FChange(uint32_t period) {
	SysTick_Init(period);
}

void Sound_IChange(Instrument nI) {
	cMusic.i = nI;
}

void Sound_Stop() {
	SysTick_Disable();
	stopMusic();
}

void Sound_Start() {
	SysTick_Enable();
	startMusic();
}

void Sound_Rewind() {
	Sound_Stop();
	rewindMusic();
	Sound_Start();
}

int GetWave() {
	return cMusic.i.sound[m_pointer%64];
}

int GetScaler() {
		//fader;
		int x = fader/50;
		//int scaler = 1-x/100+x*x/20000-x/6000*x/1000*x;
		int scaler = 100 - (x)/10 + (x * x)/2000 - (x * x * x)/600000;
		scaler *= GetWave();
	//int scaler = -m_pointer + 20000;
		//scaler = (scaler > 0 && scaler <= 1) ?  scaler : 0;
		/*if(cMusic.i.sound[m_pointer%64] - 2048 < 0) {
			scaler = 200 - scaler;
		}*/
	//return scaler;
	if(scaler >= 0) {
		fader++;
		return scaler;
		//return (cMusic.i.sound[m_pointer%64] >= 2048) ? scaler : -scaler;
	} else return 0;
}

void SysTick_Handler(void){
	GPIO_PORTF_DATA_R ^= 0x04;       // toggle PF2
	int test = GetScaler();
	int wave = GetWave();
	/*if(wave >= 2048) {
		DAC_Out(wave - (wave*100-test)/100);
	} else {
		DAC_Out(wave + (wave*100 - test)/100);
	}*/
	DAC_Out((wave * test/(wave * 100))/100);
	m_pointer = (m_pointer+1)%64; 
}

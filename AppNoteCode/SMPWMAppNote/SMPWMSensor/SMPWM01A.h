// Amphenol Advanced Sensors SMPWM01A
// http://www.digikey.com/product-detail/en/SM-PWM-01A/235-1372-ND/5012137
// Application Notes
// http://www.digikey.com/Web%20Export/Supplier%20Content/amphenol-advanced-sensors-45/pdf/amphenol-advanced-smart-sensor.pdf?redirected=1
// 
// Pin1 - GND
// Pin2 - OUTPUT P2 particles > 2um - Micro digital pin 10
// Pin3 - 5V
// Pin4 - OUTPUT P1 particles ~ 1um - Micro digital pin 9
// Pin5 - NC
//
#ifndef SMPWM01A_h
#define SMPWM01A_h
#include <Arduino.h>

#define P2 10
#define P1 9
#define FILTER_WEIGHT 2.0 //set to 1.0 for no filtering
#define SAMPLE_MS 30000ul

class SMPWM01A {
    public:
	
        SMPWM01A();
		
		void begin();
		
		static void PCINT0_ISR();
		
		static void TIMER1_COMPA_ISR();
		
		float getPM2();
		
		float getPM10();
		
    private:
		
		static int statePM10, statePM02;
		
		static unsigned long startPM10, startPM02; 
		
		static volatile unsigned long lpoPM10, lpoPM02;
		
		static float concPM10, concPM02;
       
};






#endif

//MODULE-2 
// CODE FOR  MAJOR ASSIGNMENT





//PHOTO-RESISTOR PIN FOR LEDs (F- 6,7)

int lightPin = 0; //the analog pin the photoresistor is connected to
   
              
              
//LED PIN (F- 20,21)

int ledPin = 7;   //the pin the LED is connected to
                  
 
                  
//SERVO CONTROLLED BY THE PHOTO-RESISTOR (2nd) (E - 4,5,6)

#include <Servo.h> 
              
Servo myservo;  // create servo object to control a servo 
int potpin = 1;  // analog pin used to connect the PHOTO-RESISTOR (F- 15,16)
int val;    // variable to read the value from the analog pin                   



//SERVO CONTROLLED BY THE POTENTIOMETER (E - 15,16,17)

//#include <Servo.h> 

//Servo servo;  // create servo object to control a servo 
//int pin = 2;  // analog pin used to connect the POTENTIOMETER
//int var;    // variable to read the value from the analog pin    






                  
                  
void setup()

//SERVO CONTROLLED BY THE PHOTO-RESISTO
{ 
Serial.begin(9600);        
myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
//myservo.attach(number);  // attaches the servo on pin ? to the servo object 
{
pinMode(ledPin, OUTPUT); //sets the led pin to output
}
} 
 

//SERVO CONTROLLED BY THE POTENTIOMETER 

{ 
  //Serial.begin(9600);
  //myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
} 
                ?
                ?
                ?
                
  
  
  
  
 /*
 * loop() - this function will start after setup 
 * finishes and then repeat
 */
 
 
 
 
 
 
  
 
void loop()

{ 
            
 // PHOTO-RESISTOR MOVES SERVO
 
  val = analogRead(potpin);            // reads the value of the potentiometer (value between 0 and 1023) 
  Serial.println(val);  
  val = map(val, 50, 300, 0, 179);     // scale it to use it with the servo (value between 0 and 180) 
  myservo.write(val);                  // sets the servo position according to the scaled value 
  delay(15);          



// POTENTIOMETER MOVES SERVO
                ?
                ?
                ?
                ?
                ?
                




// LED LIGHTS

 int lightLevel = analogRead(lightPin);            //Read the lightlevel
 lightLevel = map(lightLevel, 0, 900, 0, 255);    //adjust the value 0 to 900 to span 0 to 255
  
 lightLevel = constrain(lightLevel, 0, 255);    //make sure the value is betwween 0 and 255
 analogWrite(ledPin, lightLevel);               //write the value
}
} 

#define trig 13         /*triger pin of a ultrasonic sensor*/
#define eco 12          /*eco pin of a ultrasonic sensor*/
#include <Servo.h>
#define lcmotor 7       /*Left side clockwise rotating motor*/
#define lamotor 6       /*Left side anti clockwise rotating motor*/
#define rcmotor 5       /*right side clockwise rotating motor*/
#define ramotor 4       /*right side anti clockwise rotating motor*/
int angle=90;
Servo servo;            /*Servo motor*/
void setup() {
  pinMode(trig,OUTPUT);
  servo.attach(11);
  pinMode(eco,INPUT);
  pinMode(lcmotor,OUTPUT);
  pinMode(lamotor,OUTPUT);
  pinMode(rcmotor,OUTPUT);
  pinMode(ramotor,OUTPUT);
}

void loop() {
  servo.write(90);
  digitalWrite(trig,HIGH);
  delayMicroseconds(10);
  digitalWrite(trig,LOW);
  long tim=pulseIn(eco,HIGH)/2;
  long dist=tim*0.034;
  digitalWrite(lamotor,HIGH);
  digitalWrite(rcmotor,HIGH);

  
  if(dist<20){
    
    digitalWrite(lamotor,LOW);
    digitalWrite(rcmotor,LOW);
    
    digitalWrite(lcmotor,HIGH);
    digitalWrite(ramotor,HIGH);
    delay(500);
    digitalWrite(lcmotor,LOW);
    digitalWrite(ramotor,LOW);
    servo.write(0);
    delay(1000);
    
    digitalWrite(trig,HIGH);
    delayMicroseconds(10);
    digitalWrite(trig,LOW);
    long tim=pulseIn(eco,HIGH)/2;
    long dist=tim*0.034;
    
    if(dist>20){
      digitalWrite(lamotor,HIGH);
      delay(1000);
      digitalWrite(rcmotor,HIGH);
      servo.write(90);
    }
    else{
      servo.write(180);
      delay(1000);
      
      digitalWrite(trig,HIGH);
      delayMicroseconds(10);
      digitalWrite(trig,LOW);
      long tim=pulseIn(eco,HIGH)/2;
      long dist=tim*0.034;


      
      if(dist>20){
      
        digitalWrite(rcmotor,HIGH);
        delay(1000);
        digitalWrite(lamotor,HIGH);
        servo.write(90);
      }
      else{
        digitalWrite(lcmotor,HIGH);
        digitalWrite(ramotor,HIGH);
        delay(2000);
        digitalWrite(lcmotor,LOW);
        digitalWrite(ramotor,LOW);
        digitalWrite(lamotor,HIGH);
        delay(1000);
      }
    }
    }
  }

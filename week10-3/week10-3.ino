//week10-3
//把Y線接Makeruno pin 3
void setup() {
    pinMode(2,INPUT_PULLUP);
    //pinMode(3,INPUT);
    pinMode(8,OUTPUT);

}

void loop() {
  int now=analogRead(A3);
  if(now>800){
    tone(8,523,100);//發出do
    delay(100);
    tone(8,784,100);//發出so
    delay(200);
  }else if(now<200){
    tone(8,784,100);//發出so
    delay(100);
    tone(8,523,100);//發出do
    delay(200);
  }

}

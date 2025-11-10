//week10-4
//把Y線接Makeruno pin A3
void setup() {
    Serial.begin(9600);
    pinMode(2,INPUT_PULLUP);
    pinMode(8,OUTPUT);

}

void loop() {
  delay(100);//慢一點，避免Processing來不急處理
  int now=analogRead(A3);
  Serial.println(now);
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

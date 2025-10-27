//week03_7a_arduino_serial_read_tone

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
}

void serialEvent(){
  while(Serial.available()) {
    Serial.read();
    tone(8,800,200);
  }
}
void loop() {
  // put your main code here, to run repeatedly:

}
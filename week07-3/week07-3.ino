//week07-3_arduino_blink
//安裝好後，Select Board要選剛剛裝置管理員的USB-Serial
//修改自week07-2
//使用麵包版，每5個為一排
void setup() {
  pinMode(10,OUTPUT);
  pinMode(11,OUTPUT);
  pinMode(12,OUTPUT);
  pinMode(13,OUTPUT);
}

void loop() {
  for(int i=10;i<=13;i++){
  digitalWrite(13,LOW);
  digitalWrite(i-1,LOW);
  digitalWrite(i,HIGH);
  delay(500);
  }
}

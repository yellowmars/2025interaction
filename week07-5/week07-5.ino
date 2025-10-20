//week07-5
void setup() {
  //RGB LED最常那段，是接GND
 pinMode(3,OUTPUT);//最左邊的紅色
 pinMode(6,OUTPUT);//藍色
 pinMode(5,OUTPUT);//綠色(最外面)
}
//這些特別的角分別是3,5,6,9,10,11,共6個，都可以控制他的亮暗程度
void loop() {
  analogWrite(6,0);
  analogWrite(3,255);
  delay(500);
  analogWrite(3,0);
  analogWrite(5,255);
  delay(500);
  analogWrite(5,0);
  analogWrite(6,255);
  delay(500);
}

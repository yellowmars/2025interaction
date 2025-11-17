//week11-1
//修改自week10-7
void setup() {
  Serial.begin(9600);
  pinMode(2,INPUT_PULLUP);
  pinMode(8,OUTPUT);
}
int count=0,totalX=0,totalY=0;//要統計頻值
int x0=512,y0=512;
void loop() {
  delay(30);
  int x=analogRead(A2);
  int y=analogRead(A3);
  if(count<20){
    totalX+=x;//加總，要算平均
    totalY+=y;//加總，要算平均
    count++;//又讀到一筆
    x0=totalX/count;
    y0=totalY/count;
  }
  //Serial.write(x/4);
  //Serial.write(y/4);
  if(abs(x-x0)<25)x=128;//數值變化太小，直接放中間值128
  else x=(x-x0)/4.4+128;//有大的數值，就剪掉中間值128
  if(abs(y-y0)<25)y=128;//數值變化太小，直接放中間值128
  else y=(y-y0)/4.4+128;//有大的數值，就剪掉中間值128
  Serial.write(x);
  Serial.write(y);
  if(x>900) tone(8,784,100);
  if(x<100) tone(8,523,100);
  if(y>900) tone(8,659,100);
  if(y<100) tone(8,500,100);
}
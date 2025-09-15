//week02-3
import processing.serial.*;
Serial myPort;
void mousePressed(){
  myPort.write(" ");//mouse按下時，就送" "出去
}
void setup(){
  size(400,400);
  myPort=new Serial(this,"COM4",9600);
}
void draw(){
  if(mousePressed) background(#FF0000);
  else background(#00FF00);
}

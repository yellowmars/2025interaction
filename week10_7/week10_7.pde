//week10-7
import processing.serial.*;
Serial myPort;
void setup(){
   size(500,500);
   myPort=new Serial(this,"COM5",9600);
}
int x=128,y=128;
void draw(){
   background(#FFFFA0);
   ellipse(x*2,y*2,8,8);
   if(myPort.available()>0){
     x=myPort.read();
     y=myPort.read();
   }
}

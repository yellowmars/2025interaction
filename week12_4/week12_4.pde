//week12-4
//恐龍跳跳跳
PImage img;
void setup(){
  size(300,500);
  img=loadImage("dino.png");
}
float []boardX={50,200,100,200};//把原來的1個變數，便很多個陣列
float [] boardY={100,200,300,400};//boardX=200,boardY=400;
float x=200,y=400,dx=0,dy=0;
boolean flying=false;
void draw(){
  background(255);
  for(int i=0;i<4;i++){
    rect(boardX[i],boardY[i],100,5);
     if(y+100<=boardY[i] && y+dy+100>=boardY[i] && boardX[i]<=x+100 && x<=boardX[i]+100){
        y=boardY[i]-100;
        dy=0;
        flying=false;
     }
  }
    if(flying){
      y+=dy;
      if(y<400)dy+=0.98;
      else{
        dy=0;
        flying=false;
      }
  }
  image(img,x,y,100,100);
  x+=dx;
}
void keyPressed(){
  if(keyCode==UP) dy=-15;flying=true;
  if(keyCode==LEFT) dx=-1;
  if(keyCode==RIGHT) dx+=1;
}
void keyReleased(){
  if(keyCode==LEFT || keyCode==RIGHT) dx=0;
}

//week13-2
//彈磚塊
void setup(){
  size(500,300);
}
float x=250,y=250,dx=0,dy=0;
boolean onBoard=true;
void draw(){
  background(0);
  ellipse(x,y,8,8);
  rect(mouseX-50,254,100,15);
  if(onBoard) x=mouseX;
  else{
    x+=dx;
    y+=dy;
  }
}
void mousePressed(){
  if(onBoard){
    onBoard=false;
    dy=-3;
    dx=random(-3,+3);
  }
}

//week01-6-mousePressed-mouseX-pmouseX-mouseY-pmouseY
//結合mouse和keybord
void setup(){
  size(500,500);
}
int x=200,y=250;
void draw(){
  background(#FFFFAA);
  //if(mousePressed && x<mouseX && y<mouseY){
   if(mousePressed && x<mouseX && mouseX<x+100 && y<mouseY && mouseY<y+50){
    x+=mouseX-pmouseX;
    y+=mouseY-pmouseY;
  }
  rect(x,y,100,50);
}

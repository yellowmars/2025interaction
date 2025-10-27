//week08-1-2048-part1-for-fill-rect
void setup(){
  size(410,410); //讓邊線漂亮一點
}
void draw(){
  background(188,174,162);
  for(int i=0;i<4;i++){
    for(int j=0;j<4;j++){
      fill(206,194,185);
      noStroke();//不要要有黑線外觀
      rect(j*100+10,i*100+10,90,90,5);//弧角是5
    }
  }
}

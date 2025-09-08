//week01-2-keyPressed_textSize_text_key
void setup(){
   size(500,500); 
}
void draw(){
  if(keyPressed){//記得關注音
    background(#FF0000);//紅色背景
    textSize(80);//字的大小
    text(""+key,100,100);
  }
}

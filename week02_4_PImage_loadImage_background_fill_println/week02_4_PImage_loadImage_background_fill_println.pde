//week02_4_PImage_loadImage_background_fill_println
PImage img;
void setup(){
  size(400,400);
  img=loadImage("tomorin.png");
}//記得像上周一樣把圖拉進來
void draw(){
  background(img);
  fill(255,mouseX);//半透明的色彩 白色alpha值是128
  println(mouseX);//把mouseX的值在下面小黑印出來
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
}

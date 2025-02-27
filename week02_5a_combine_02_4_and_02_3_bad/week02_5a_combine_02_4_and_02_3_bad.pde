//week02_5_combine_02_4_and_02_3_bad
PImage img;
void setup(){
  size(400,400);
  img=loadImage("tomorin.png");      
}//記得像上周一樣把圖拉進來
void draw(){
  background(img);
  fill(255,200);//半透明的色彩 白色alpha值是200
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
  
  stroke(255,0,0);
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}

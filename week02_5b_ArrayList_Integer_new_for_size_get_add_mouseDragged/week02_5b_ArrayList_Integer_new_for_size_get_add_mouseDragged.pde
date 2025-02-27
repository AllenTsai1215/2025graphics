//week02_5b_ArrayList_Integer_new_for_size_get_add_mouseDragged
//要利用資料結構，把歷史軌跡記起來
ArrayList <Integer> x=new ArrayList <Integer>();
ArrayList <Integer> y=new ArrayList <Integer>();
PImage img;
void setup(){
  size(400,400);
  img=loadImage("tomorin.png");      
}//記得像上周一樣把圖拉進來
void draw(){
  background(img);
  fill(255,200);//半透明的色彩 白色alpha值是200
  rect(0,0,400,400);//畫超大四邊形，全部蓋住
  //上面是week02-4
  for(int i=1;i<x.size();i++){
    line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}

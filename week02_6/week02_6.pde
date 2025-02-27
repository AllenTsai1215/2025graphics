//week02_6
//不要只有一筆畫，要有很多段
ArrayList <Integer>x,y;//先有兩個還沒準備好的兩個小的資料結構，等mousePressed再新增準備
ArrayList <ArrayList <Integer>> xx=new ArrayList <ArrayList <Integer>>();//大的資料結構
ArrayList <ArrayList <Integer>> yy=new ArrayList <ArrayList <Integer>>();
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
  for(int I=0;I<xx.size();I++){//大寫I對應大的資料結構
    ArrayList <Integer> x=xx.get(I);//取出裡面小的資料結構
    ArrayList <Integer> y=yy.get(I);
    for(int i=1;i<x.size();i++){//小的再照舊畫
      line(x.get(i),y.get(i),x.get(i-1),y.get(i-1));
    }
  }
}
void mouseDragged(){
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時建立新的資料結構
  x=new ArrayList <Integer>(); xx.add(x);
  y=new ArrayList <Integer>(); yy.add(y);
}

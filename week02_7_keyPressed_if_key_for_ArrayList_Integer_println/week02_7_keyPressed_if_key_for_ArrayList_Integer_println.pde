//week02_7_keyPressed_if_key_for_ArrayList_Integer_println
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
void keyPressed(){//小心注音輸入法會卡住按鍵，要換英文輸入
if(key=='s'||key=='S'){
    for(int I=0;I<xx.size();I++){//大寫I對應大的資料結構
      ArrayList <Integer> x=xx.get(I);//取出裡面小的資料結構
      ArrayList <Integer> y=yy.get(I);
      println("beginShape();");
      for(int i=1;i<x.size();i++){//小的再照舊畫
        println("  vertex("+x.get(i)+","+y.get(i)+");");
      }//改在keyPressed()按下s或S時，再全部印
      println("endShape();");
    }  
  }
}
void mouseDragged(){
  //println("vertex(mouseX,mouseY)");
  //println("vertex("+mouseX+","+mouseY+")");不要在這裡印
  x.add(mouseX);
  y.add(mouseY);
}
void mousePressed(){//滑鼠按下去時建立新的資料結構
  x=new ArrayList <Integer>(); xx.add(x);
  y=new ArrayList <Integer>(); yy.add(y);
}

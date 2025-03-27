//week06_4_sphere_box_push_T_R_T_box_pop
//慢慢組出機械手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);//Step00
  translate(width/2,height/2);//Step00
  sphere(10);//Step04放個圓球當作中心的參考
  
  box(200,50,25);//step05手肘
  
  fill(252,131,77);
  pushMatrix();
    translate(x,y);//step06 發現放100,0 
    if(mousePressed) rotateZ(radians(frameCount));
    translate(25,0,0);//Step02
    box(50,25,50);//Step01 小手腕
  popMatrix();//Step03
}
float x=0,y=0;//step06會動的位置
void mouseDragged(){//step06
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//step07 印出來
}

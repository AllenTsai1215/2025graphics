//week06_5_push_T_box_T_R_T_box_pop_pop
//慢慢組出機械手臂
void setup(){
  size(500,400,P3D);
}
void draw(){
  background(255);
  translate(width/2,height/2);
  sphere(10);
  
  fill(252,131,77);
  
  pushMatrix();//step04新的一組
    translate(x,y);//step05新的轉動
    //step03把程式碼往右縮排
    box(200,50,25);//手肘
      
    pushMatrix();
      translate(100,0);//step01 發現放100,0 
      //if(mousePressed)//把剛剛的if(mousePressed)刪掉
      rotateZ(radians(frameCount));//step02只轉動
      translate(25,0,0);//往右推，讓左端放中心
      box(50,25,50);//小手腕
    popMatrix();
    //step03把程式碼往右縮排
  popMatrix();//step04新的一組
}
float x=0,y=0;
void mouseDragged(){
  x+=mouseX-pmouseX;
  y+=mouseY-pmouseY;
  println("x:"+x+"y:"+y);//step07 印出來
}

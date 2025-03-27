//week06_2_ellipse_translate_push_rotate_translate_box_pop
//再加一個移動，把物體放到轉盤的中心
void setup(){
  size(500,500,P3D);
}
void draw(){
  background(142);
  ellipse(width/2,height/2,200,200);
  translate(width/2,height/2);//把東西到畫面中間
  pushMatrix();//第五週教過的Matrix保護
    if(mousePressed) rotateZ(radians(frameCount));//對著下面中心旋轉
    translate(-50,0,0);//把棒子往左移一半，讓右端放在政中心
    box(100,30,30);//橫的棒子
  popMatrix();//第五週教過的Matrix保護
}

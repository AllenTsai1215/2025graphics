//week04_03_rotat_rotateX_radians_mouseY
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  //rotateY(radians(mouseX));//上周的左右轉
  rotateX(radians(-mouseY));//本周的上下轉
  box(200);
}

//week01_4_Java_setup_drew_rotate
void setup(){
  size(400,400,P3D);
}
float angle =0;
void draw(){
  rotate(angle);
  angle +=0.01;
  beginShape(TRIANGLES);//開始畫三角形s
  fill(255,0,0);vertex(0,100);
  fill(0,255,0);vertex(400,0);
  fill(0,0,255);vertex(400,400);
  endShape();
}
//Ctrl+s存檔

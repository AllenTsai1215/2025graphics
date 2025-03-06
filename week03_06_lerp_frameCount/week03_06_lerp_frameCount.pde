//week03_06_lerp_frameCount
void setup(){
  size(400,400);
}
float startX=10,startY=10;
float stopX=390,stopY=290;
void draw(){
  background(255);
  ellipse(startX,startY,10,10);
  ellipse(stopX,stopY,10,10);
  float midX=lerp(startX,stopX,frameCount/200.0);
  float midY=lerp(startY,stopY,frameCount/200.0);
  //frameCount是第幾個frame 1小時=60分，1分=60秒，1秒=60 frame
  ellipse(midX,midY,10,10);
}

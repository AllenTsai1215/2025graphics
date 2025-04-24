//week10_2_man_head_body_push_TRT_pop
PImage sangi,head,body;
void setup(){
size(600,600);
  sangi = loadImage("1.1.png");
  head = loadImage("1.1_head.png");
  body = loadImage("1.1_body.png");
}
void draw(){
background(#FFFFF2);
image(sangi,0,0);//基礎的全身
fill(255,0,255,128);//半透明紫色
rect(0,0,600,600);//蓋上去
pushMatrix();
  translate(299,130);
  rotate(radians(mouseX));
  translate(-299,-129);
  image(head,0,0);
popMatrix();
image(body,0,0);
}

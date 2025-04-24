//week10_3_man_head_body_uparmL_lefthand_push_trt_pop
PImage sangi,head,body,uparmL,lefthand,uparmR,righthand,legL,legR;
void setup(){
size(600,600);
  sangi = loadImage("1.1.png");
  head = loadImage("1.1_head.png");
  body = loadImage("1.1_body.png");
  uparmL = loadImage("1.1_uparm_L.png");
  lefthand = loadImage("1.1_left_hand.png");
}
void draw(){
background(#FFFFF2);
image(sangi,0,0);//基礎的全身
fill(255,0,255,128);//半透明紫色
rect(0,0,600,600);//蓋上去
  pushMatrix();
    translate(237,155);
    rotate(radians(mouseX));
    translate(-237,-155);
    image(uparmL,0,0);
    pushMatrix();
      translate(170,152);
      rotate(radians(mouseX));
      translate(-170,-152);
      image(lefthand,0,0);
     popMatrix();
   popMatrix();
pushMatrix();
  translate(299,130);
  //rotate(radians(mouseX));
  translate(-299,-129);
  image(head,0,0);
popMatrix();
image(body,0,0);
}

//week10_5_man_many_angle_ID_mouseDragged
PImage sangi,head,body,uparmL,lefthand,uparmR,righthand,legL,legR;
void setup(){
size(600,600);
  sangi = loadImage("1.1.png");
  head = loadImage("1.1_head.png");
  body = loadImage("1.1_body.png");
  uparmL = loadImage("1.1_uparm_L.png");
  lefthand = loadImage("1.1_left_hand.png");
  uparmR = loadImage("1.1_uparm_R.png");
  righthand = loadImage("1.1_right_hands.png");
  legL = loadImage("1.1_leg_L.png");
  legR = loadImage("1.1_leg_R.png");
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
    translate(357,164);
    rotate(radians(mouseX));
    translate(-357,-164);
    image(uparmR,0,0);
    pushMatrix();
      translate(424,154);
      rotate(radians(mouseX));
      translate(-424,-154);
      image(righthand,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(257,275);
    rotate(radians(mouseX));
    translate(-257,-275);
    image(legL,0,0);
  popMatrix();
  pushMatrix();
    translate(338,275);
    rotate(radians(mouseX));
    translate(-338,-275);
    image(legR,0,0);
  popMatrix();
pushMatrix();
  translate(299,130);
  //rotate(radians(mouseX));
  translate(-299,-129);
  image(head,0,0);
popMatrix();
image(body,0,0);
}

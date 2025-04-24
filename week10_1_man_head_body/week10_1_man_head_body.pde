//week10_1_man_head_body
size(600,600);
PImage sangi = loadImage("1.1.png");
PImage head = loadImage("1.1_head.png");
PImage body = loadImage("1.1_body.png");
background(#FFFFF2);
image(sangi,0,0);//基礎的全身
fill(255,0,255,128);//半透明紫色
rect(0,0,600,600);//蓋上去
image(head,0,0);
image(body,0,0);

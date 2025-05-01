//week11_2_alpha_interpolation
PImage sangi,head,body,uparmL,lefthand,uparmR,righthand,legL,legR;
float[]angle=new float[20];
int ID =0;
void mouseDragged(){
  angle[ID]+= mouseX-pmouseX;
}
void keyPressed(){
  if(key=='1') ID=1;//左臂
  if(key=='2') ID=2;//左手
  if(key=='3') ID=3;//右臂
  if(key=='4') ID=4;//右手
  if(key=='5') ID=5;//待用
  if(key=='6') ID=6;//待用
  if(key=='0') ID=0;//頭
  if(key=='s'){//從這裡開始
    String now="";//要放現在全部關節的值
    for(int i=0;i<20;i++){//利用for迴圈
      now+=angle[i]+" ";//全部塞到now裡面
    }
    lines.add(now);
    String[] arr= new String[lines.size()];
    lines.toArray(arr);
    saveStrings("angles.txt",arr);
  }
    if(key=='r'){
      if(R==0){ //如果目前沒有任何東西
        String[]file =loadStrings("angles.txt");
        if(file != null){//如果有讀到檔案
          for(int i=0;i<file.length;i++){//就檔案內容逐行
            lines.add(file[i]);//加到lines資料結構裡
          }
        }
      }
      if (R<lines.size()){
        float[]now=float(split(lines.get(R),' '));
        for(int i=0;i<20;i++) angle[i] =now[i];
        R=(R+1)%lines.size();
     }
  }
//    if(key=='p'){
//      float alpha=(frameCount%30)/30.0;
//      if(alpha==0.0) R=(R+1)%lines.size();
//      int R2=(R+1)%lines.size();
//     float[]oldAngle =float(split(lines.get(R),' '));
//     float[]newAngle =float(split(lines.get(R2),' '));
 //     for(int i=0;i<20;i++) angle[i] = oldAngle[i]*(1-alpha)+newAngle[i]*alpha;
 // }
}
int R=0;
ArrayList<String> lines= new ArrayList <String>(); //放移動的結果
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
void myInterpolate(){
  if(lines.size()>0){
      float alpha=(frameCount%30)/30.0;
      if(alpha==0.0) R=(R+1)%lines.size();
      int R2=(R+1)%lines.size();
      float[]oldAngle =float(split(lines.get(R),' '));
      float[]newAngle =float(split(lines.get(R2),' '));
      for(int i=0;i<20;i++) angle[i] = oldAngle[i]*(1-alpha)+newAngle[i]*alpha;
  }
}
void draw(){
  myInterpolate();
  background(#FFFFF2);
  image(sangi,0,0);//基礎的全身
  fill(255,0,255,128);//半透明紫色
  rect(0,0,600,600);//蓋上去
  pushMatrix();
    translate(237,155);
    rotate(radians(angle[1]));
    translate(-237,-155);
    image(uparmL,0,0);
    pushMatrix();
      translate(170,152);
      rotate(radians(angle[2]));
      translate(-170,-152);
      image(lefthand,0,0);
    popMatrix();
  popMatrix();
    pushMatrix();
    translate(357,164);
    rotate(radians(angle[3]));
    translate(-357,-164);
    image(uparmR,0,0);
    pushMatrix();
      translate(424,154);
      rotate(radians(angle[4]));
      translate(-424,-154);
      image(righthand,0,0);
    popMatrix();
  popMatrix();
  pushMatrix();
    translate(257,275);
    rotate(radians(angle[5]));
    translate(-257,-275);
    image(legL,0,0);
  popMatrix();
  pushMatrix();
    translate(338,275);
    rotate(radians(angle[6]));
    translate(-338,-275);
    image(legR,0,0);
  popMatrix();
pushMatrix();
  translate(299,130);
  rotate(radians(angle[0]));
  translate(-299,-129);
  image(head,0,0);
popMatrix();
image(body,0,0);
}

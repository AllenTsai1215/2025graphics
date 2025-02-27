//week02_3_void_setup_void_draw
void setup(){
  size(400,400);
  background(255);
  fill(238);
  noStroke();
  float s= 400/14;//計算每個格子的大小
  for(int i=0;i<14;i++){//左手i對應y座標
    for(int j=1;j<14;j++){//右手j對應x座標
     //rect(0,i*s*2,s,s);//先試一下位子
      if((i+j)%2==0) rect(j*s,i*s,s,s);
    }//下面才是真的程式碼，完成畫格子的任務
  }
}
void draw(){
  stroke(255,0,0);
  if(mousePressed) line(mouseX,mouseY,pmouseX,pmouseY);
}//如果mouse按下去，就畫線，給兩個座標:現在mouse跟之前的mouse

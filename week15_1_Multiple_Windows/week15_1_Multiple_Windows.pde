//week15_1_Multiple_Windows
//File>Example>Demos>Tests>MultipleWindows
void setup(){
  size(300,200);//第一個小視窗
  background(255,0,0);
  WindowB child =new WindowB();
}
void draw(){//空白的
  
}
class WindowB extends PApplet{
  public WindowB(){//建構子
    super();//呼叫上一層建構子
    PApplet.runSketch(new String[]{this.getClass().getName()},this);
  }
  public void settings(){
    size(300,200);
  }
  public void setup(){
    //size(200,200);
    background(0,255,0);
  }
  public void draw(){//空白的
    
  }
}

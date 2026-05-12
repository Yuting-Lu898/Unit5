float a=220,b=400,slideX=a;float bX=width*1.3,bY=height/1.3,bW=150,bL=30;
String back="Back",takePhoto="Take Photo",openCamera="Open Camera";

void setting(){
background(255,255,0);
slide(a,b,slideX);

Button(bX,bY,bW,bL,back);
}

void setClicks(){
  if(mouseX<=bX+bW/2&&mouseX>=bX-bW/2&&mouseY<=bY+bL/2&&mouseY>=bY-bL/2)
      mode=INTRO;
}

void mousePressed(){
if(mode==SET){
    if(mouseY>=345&&mouseY<=355 && mouseX<=b && mouseX>=a){
  slideX=mouseX;
  cirWid=map(slideX, a,b, 5,60);
  }
  };
}
void slide(float b,float a,float y){
fill(255,0,0);
line(a,350,b,350);
circle(y,350,20);
}

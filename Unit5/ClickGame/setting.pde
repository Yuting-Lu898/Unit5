float a=150,b=a+200,slideX=a;float bX=width*1.3,bY=height/1.3,bW=150,bL=30;
String back="Back",takePhoto="Take Photo",openCamera="Open Camera";

PImage photo;
//camera button position
float cx=550,cy=450,cw=190,cl=40;

Capture cam;
boolean takephoto=false,cameraOn=false;

void setting(){
background(255,255,0);
slide(a,b,slideX);

yuan(500,300);


Button(bX,bY,bW,bL,back);
//open camera and take picture
if(!cameraOn)
Button(cx,cy,cw,cl,openCamera);
else Button(cx,cy,cw,cl,takePhoto);


//take picture
if (cameraOn && !takephoto) {
    if (cam.available()) cam.read();
    
    image(cam, 80, 80);}
}
//-----------------back to intro
void setClicks(){
  if(mouseX<=bX+bW/2&&mouseX>=bX-bW/2&&mouseY<=bY+bL/2&&mouseY>=bY-bL/2)
      mode=INTRO;  
}

//
void mousePressed(){
if(mode==SET){
  //change ball size--------------------------------
    if(mouseY>=295&&mouseY<=305 && mouseX<=b && mouseX>=a){
      slideX=mouseX;
      cirWid=map(slideX, a,b, 40,200);
    }
  //camera button-----------------------------------
  if(mouseX<=cx+cw/2&&mouseX>=cx-cw/2&&mouseY<cy+cl/2&&mouseY>=cy-cl/2){
    if(!cameraOn){
      cam.start();
      cameraOn=true;
    }else if(!takephoto){
      photo=cam.get();
      takephoto=true;
      cam.stop();
    }
  }
  }
  
}
//slide
void slide(float b,float a,float y){
fill(255,0,0);
line(a,300,b,300);
circle(y,300,20);
}

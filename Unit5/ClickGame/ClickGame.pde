 import processing.video.*;
 
 
int highScore=0;

int mode;
final int INTRO=0,GAME=1,PAUSE=2,GAMEOVER=3,LEVEL=4,SET=5;
int miss,totalmiss=0,level=1;
float cirWid=50;float vy,vx;
float x1,y1;
int score=0;

void setup(){
mode=INTRO;
size(800,500);
rectMode(CENTER);
textAlign(CENTER);
cirWid=width/10;
x1=random(width/2,cirWid);
y1=random(cirWid,height/2);
vx=3;vy=3;
cam=new Capture(this, 340, 380);
}

void draw(){
  if(mode==INTRO){
    intro();
  }
   else if(mode==LEVEL){
    level();
  }
  else if(mode==GAME){
    game();
  }
  else if(mode==PAUSE){
    pause();
  }
  else if(mode==GAMEOVER){
    gameover();
  }
  else if(mode==SET){
    setting();

  }
  else{
    println("ERROR: Mode="+ mode);
  }
}

void mouseClicked(){
if(mode==INTRO){
    introClicks();
  }
  else if(mode==LEVEL){
    levelClicks();
  }
else if(mode==GAME){
    gameClicks();
  }
  
else if(mode==PAUSE){
    pauseClicks();
  }
else if(mode==GAMEOVER){
    gameoverClicks();
  }
  else if(mode==SET){
    setClicks();
  }
  
}

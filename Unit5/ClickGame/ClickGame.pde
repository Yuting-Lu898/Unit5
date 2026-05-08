int mode;
final int INTRO=0,GAME=1,PAUSE=2,GAMEOVER=3,LEVEL=4;
int miss,totalmiss=0,level=1;
float cirWid;float vy,vx;
float x1,y1;
int score=0;

void setup(){
mode=INTRO;
size(800,500);
rectMode(CENTER);
textAlign(CENTER);
cirWid=width/20;
x1=random(width-10,0);
y1=random(0,height-10);
//x1=width/2;y1=height/2;
vx=5;vy=2;
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
  else{
    println("ERROR: Mode="+ mode);
  }
}

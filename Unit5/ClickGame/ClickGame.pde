int mode;
final int INTRO=0,GAME=1,PAUSE=2,GAMEOVER=3,LEVEL=4;
int miss,totalmiss=0,level=1;

void setup(){
mode=INTRO;
size(800,500);
rectMode(CENTER);
textAlign(CENTER);
}
void draw(){

  if(mode==INTRO){
    intro();
  }
   else if(mode==level){
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

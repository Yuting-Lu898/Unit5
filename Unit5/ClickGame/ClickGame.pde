int mode;
final int INTRO=0,GAME=1,PAUSE=2,GAMEOVER=3;

void setup(){
mode=GAMEOVER;
size(800,800);
}
void draw(){

  if(mode==INTRO){
    intro();
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

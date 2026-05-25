import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;



int mode;
int INTRO=0,GAME=1,PAUSE=2,GAMEOVER=3,LEVEL=4,SET=5;
String mo1="1 Player",mo2="2 Player";
boolean AI;

float lx,ly,ld,rx,ry,rd;
float ballx,bally,balld;

boolean wkey,skey,upkey,downkey;


void setup(){
mode=INTRO;
size(800,500);
background(0);
rectMode(CENTER);
textAlign(CENTER);


lx=0;
ly=height/2;
ld=100;

rx=width;
ry=height/2;
rd=100;

bally=height/2;
ballx=width/2;
balld=50;


wkey=skey=upkey=downkey=false;
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




void mouseClicked(){
if(mode==INTRO){
    introClick();
  }
else if(mode==GAME){
    gameClick();
  }
  
else if(mode==PAUSE){
    pauseClick();
  }
else if(mode==GAMEOVER){
    gameoverClick();
  }
}

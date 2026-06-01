import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme,over,bounce,score;

int mode;
int INTRO=0,GAME=1,GAMEOVER=2,PAUSE=3;
//padd
float xx,yy,pw;
//ball
float bx,by,bw;

//key
boolean akey,dkey;
//blick
int pointW=10;
int[] x;
int[] y;
boolean[][] alive;
//row colomn
int r=9,c=3;
//horizontal space  vertical space
int hs=50,vs=50;


void setup(){
  textAlign(CENTER);
  rectMode(CENTER);
  size(500,500);
  mode=INTRO;
  //music
  minim=new Minim(this);
  theme=minim.loadFile("start.mp3");
  over=minim.loadFile("lost.mp3");
  score=minim.loadFile("bon.mp3");
  
  
  xx=width/2;
  yy=height;
  pw=50;
  bx=width/2;by=300;bw=20;
  //x,y setup
  x=new int[r];
  y=new int[c];
  //x,y
  for(int i=0;i<r;i++){
     x[i]=(i+1)*hs;
  }
  for(int i=0;i<c;i++){
     y[i]=(i+1)*vs;
  }
  
  alive=new boolean[r][c];

for(int i=0;i<r;i++)
  for(int j=0;j<c;j++)alive[i][j]=true;
  
}

void draw(){
  if(mode==0){
    intro();
  }
  else if(mode==GAME){
    game();
  }
  else if(mode==GAMEOVER){
    gameover();
  }
  else if(mode==PAUSE){
    pause();
  }
}

void mouseClicked(){
  if(mode==0){
    introClick();
  }
  else if(mode==GAME){
    gameClick();
  }
  else if(mode==GAMEOVER){
    gameoverClick();
  }
  else if(mode==PAUSE){
    pauseClicked();
  }
}

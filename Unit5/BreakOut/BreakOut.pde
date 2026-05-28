int mode;
int INTRO=0,GAME=1,GAMEOVER=2;
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
int r=5,c=3;
//space
int hs=50,vs=50;


void setup(){
  textAlign(CENTER);
  rectMode(CENTER);
  size(300,500);
  mode=INTRO;
  
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
}

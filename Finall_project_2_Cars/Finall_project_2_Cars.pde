import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//time and set
float set_type=0;
int set_time, wait=5000;

int wid=40, leng=20;
int x=50, y=50, row1=x;
int col1=y, col2=col1+leng, col3=col2+leng, col4=col3+leng, col5=col4+leng, col6=col5+leng, col7=col6+leng, col8=col7+leng, col9=col8+leng, col10=col9+leng;

int mode;
int INTRO=0, GAME=1, PAUSE=2, GAMEOVER=3, LEVEL=4, SET=5;
String mo1="1 Player", mo2="2 Player";

float lx, ly, ld, rx, ry, rd;
float ballx, bally, balld;
//up down
boolean wkey, skey, upkey, downkey;
//turning
boolean akey, dkey, lekey, rikey;

Minim minim;
//set1
int pointW=10;
int[] set1_X={100, 250, 400, 550, 700};
int set1_Y=0;
boolean[][] set1_alive;
int set1_row=5, set1_column=1;
//set2
int[] set2_X;
int set2_Y=0;
boolean[][] set2_alive;
int set2_row=5, set2_column=2;
//set3
int[] set3_X;
int set3_Y=0;
boolean[][] set3_alive;
int set3_row=3, set3_column=1;


void setup() {
  set_time=millis();
  //alive
  set1_alive=new boolean[set1_column][set1_row];
  set2_alive=new boolean[set2_column][set2_row];
  set3_alive=new boolean[set3_column][set3_row];
  for (int i=0; i<set1_column; i++)
    for (int j=0; j<set1_row; j++)set1_alive[i][j]=true;
  for (int i=0; i<set2_column; i++)
    for (int j=0; j<set2_row; j++)set2_alive[i][j]=true;
  for (int i=0; i<set3_column; i++)
    for (int j=0; j<set3_row; j++)set3_alive[i][j]=true;
  //
  mode=INTRO;
  size(800, 500);
  background(0);
  rectMode(CENTER);
  textAlign(CENTER);

  minim=new Minim(this);

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

void draw() {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==SET) {
    setting();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else {
    println("ERROR: Mode="+ mode);
  }
}




void mouseClicked() {
  if (mode==INTRO) {
    introClick();
  } else if (mode==GAME) {
    gameClick();
  } else if (mode==SET) {
    settingClick();
  } else if (mode==PAUSE) {
    //pauseClick();
  } else if (mode==GAMEOVER) {
    gameoverClick();
  }
}

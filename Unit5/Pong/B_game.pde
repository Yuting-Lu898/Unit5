color brown = #8B5E3C,softTerracotta = #C97B63;
int rScore=0,lScore=0;
float vx=2;
float vy=2;

void game(){

background(softTerracotta);
  drawing();
//left paddle
if(dist(lx,ly,ballx,bally)<=(ld+balld)/2){
  vx=(ballx-lx)/10;
  vy=(bally-ly)/10;
}
//right paddle
if(dist(rx,ry,ballx,bally)<=(rd+balld)/2){
  vx=(ballx-rx)/10;
  vy=(bally-ry)/10;
}

//move
ballx+=vx;
bally+=vy;
//top and bottom
if(bally<=balld/2||bally>=height-balld/2){
  vy*=-1;
}
//ball out
if(ballx-balld/4<=0){
  ballx=width/2;
  bally=height/2;
  rScore++;
  vx=2;
  vy=2;
}
if(ballx+balld/4>=width){
  ballx=width/2;
  bally=height/2;
  lScore++;
  vx=-2;
  vy=2;
}
//controls
if(wkey&&ly-ld>0)ly-=5;

if(skey&&ly+ld<height)ly+=5;

if(upkey&&ry-rd>0)ry-=5;

if(downkey&&ry+rd<height)ry+=5;

}

void gameClick(){



}





void drawing(){
  strokeWeight(6);
  stroke(255);
  line(width/2,0,width/2,height);
  
  //paddles
  pushStyle();
  
  
  noFill();
  circle(width/2,height/2,height/4);
  fill(brown);
  circle(lx,ly,ld);
  circle(rx,ry,rd);
  //ball
  fill(255,0,0);
  circle(ballx,bally,balld);
  
  textSize(50);
  fill(255,0,0);
  text(lScore,width/4,height/10);
  fill(0,0,255);
  text(rScore,width/4*3,height/10);
  
  
  
  
  popStyle();

}

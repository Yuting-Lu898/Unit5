color brown = #8B5E3C,softTerracotta = #C97B63;
int Score=0,life=4;
float vx=0;
float vy=2;


//GAME
void game(){
  background(softTerracotta);
  drawing();
  
  //limt
  xx=constrain(xx,pw/2,width-pw/2);
  //bounce
  if(dist(xx,yy,bx,by)<=(pw+bw)/2){
    vx=(bx-xx)/5;
    vy=(by-yy)/5;
  }
  //move
  bx+=vx;
  by+=vy;
  //move
  if(akey)xx-=5;
  if(dkey)xx+=5;
  
  //top and buttom
  if(by<=bw/2||by>=height-bw/2){
    vy*=-1;
    life--;bx=width/2;by=300;vx=0;vy=2;
  }
  //side
  if(bx<=bw/2||bx>=width-bw/2)vx*=-1;
  
  
  if(Score==r*c||life==0)mode=GAMEOVER;
}

void gameClick(){
}
void drawing(){
  //circle
  for(int i=0;i<r;i++){
    for(int j=0;j<c;j++) {
      if(alive[i][j]==true)  
        brickManage(i,j);
    }
  } 
  //paddles
  pushStyle();
  
  fill(brown);
  circle(xx,yy,pw);
  fill(0,0,255);
  //ball
  fill(255,0,0);
  circle(bx,by,bw);
  //Score
  textSize(50);
  fill(255,0,0);
  text(Score,width/2,height/10);
  popStyle();
}





void brickManage(int i,int j){

  float brickX=(i+1)*hs;
  float brickY=(j+1)*vs;
  
  if(alive[i][j]){
    if(j==0)fill(0,255,0);
    if(j==1)fill(255,0,0);
    if(j==2)fill(0,0,255);
    
    circle(brickX,brickY,pointW);
    
      if(dist(brickX,brickY,bx,by)<=(pointW+bw)/2){
        alive[i][j]=false;
        Score++;
        vy*=-1;
      }
  }
}

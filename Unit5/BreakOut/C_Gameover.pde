void gameover(){
  theme.pause();
  over.play();
  background(0);
  
  pushStyle();
  
  textAlign(CENTER,CENTER);
  
  if(Score==r*c){
  
    fill(0,255,0);
    textSize(50);
    text("YOU WIN!",width/2,height/2);
  
  }else{
    fill(255,0,0);
    textSize(50);
    text("YOU LOSE!",width/2,height/2);
  }
  
  fill(255);
  textSize(25);
  text("Score: "+Score,width/2,height/2+60);
  
  button(width/2,height/2+130,180,60,"RESTART");
  
  popStyle();
}

void gameoverClick(){

  if(mouseX>=width/2-90&&mouseX<=width/2+90&&mouseY>=height/2+100&&mouseY<=height/2+160){restart();theme.rewind();}
}
  
void restart(){  
  Score=0;
  life=4;
  
  xx=width/2;
  yy=height;
  
  bx=width/2;
  by=300;
  
  vx=0;
  vy=2;
  
  for(int i=0;i<r;i++)
    for(int j=0;j<c;j++)
      alive[i][j]=true;
  
 
  
  mode=INTRO;
}

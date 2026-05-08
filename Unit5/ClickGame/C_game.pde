void game(){
background(255,0,0);
yuan(x1,y1);
x1+=vx;
y1+=vy;

  if(x1<=0||x1>=width){
  vx*=-1;
  }
  if(y1<=0||y1>=height){
  vy*=-1;
  }
}

void gameClicks(){
 if(dist(mouseX,mouseY,x1,y1)<=cirWid){
      score+=1;
 }else{
   score-=level;
 }
 
 
}

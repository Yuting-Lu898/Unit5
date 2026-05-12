
void game(){
background(255,0,0);
fill(0,0,243);
if(mode!=PAUSE){
  circle(50,50,50);
  line(40,40,40,60);
  line(60,40,60,60);
}

yuan(x1,y1);
x1+=vx;
y1+=vy;

pushMatrix();
fill(255);
text("Score :"+score,width/2,height/5);
text("Miss :"+miss,width/2,height/4);
popMatrix();
  if(x1<=0||x1>=width)vx*=-1;
  
  if(y1<=0||y1>=height)vy*=-1;
}

void gameClicks(){
 if(dist(mouseX,mouseY,x1,y1)<=cirWid/1.4){
      score+=1;
 }else if(dist(mouseX,mouseY,50,50)<=50){
   mode=PAUSE;
 }
 else{
   miss+=level;
 }
 if(miss>=10){
    mode=GAMEOVER;
  }
}

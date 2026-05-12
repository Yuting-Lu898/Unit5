void pause(){
text("PAUSE",width/2,height/2);
pushStyle();
circle(50,50,50);
  fill(0);
  triangle(45,40,45,60,65,50);
  popStyle();
}

void pauseClicks(){
if(dist(mouseX,mouseY,50,50)<=50){
   mode=GAME;
 }

}

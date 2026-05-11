void pause(){
//background(0,0,255);
text("PAUSE",width/2,height/2);
}

void pauseClicks(){
if(dist(mouseX,mouseY,50,50)<=50){
   mode=GAME;
 }

}

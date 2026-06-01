void pause(){

  background(0,150);
  
  pushStyle();
  
  textAlign(CENTER,CENTER);
  
  fill(255);
  
  textSize(60);
  text("PAUSED",width/2,height/2-50);
  
  button(width/2,height/2+40,200,60,"RESUME");
  
  popStyle();
}

void pauseClicked(){

  if(mouseX>=width/2-100&&mouseX<=width/2+100&&mouseY>=height/2+10&&mouseY<=height/2+70)mode=GAME;
}

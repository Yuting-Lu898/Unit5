String start="Start";
int b1x=250,b1y=400,buttonW=150,bl=40;

void intro(){

  theme.play();
  
  background(0);
  
  drawTitle();
  
  button(b1x,b1y,buttonW,bl,"START");

}

void introClick(){
  if(mouseX<=b1x+buttonW/2&&mouseX>=b1x-buttonW/2&&mouseY<=b1y+bl/2&&mouseY>=b1y-bl/2){
    mode=GAME; 
  }
}

String title="BREAKOUT";

void drawTitle(){

  pushStyle();
  
  textAlign(CENTER,CENTER);
  
  float alpha=map(sin(frameCount*0.08),-1,1,100,255);
  
  textSize(60);
  
  //glow
  fill(255,255,0,alpha/2);
  text(title,width/2+4,124);
  popStyle();
}

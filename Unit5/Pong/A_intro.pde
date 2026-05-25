int buttonW=200,buttonL=50,b1x=250,b1y=350,b2x=b1x+300;//button


void intro(){
  background(0);
button(b1x,b1y,buttonW,buttonL,mo1);
button(b2x,b1y,buttonW,buttonL,mo2);
}

void introClick(){
  if(mouseX<=b1x+buttonW&&mouseX>=b1x-buttonW/2&&mouseY<=b1y+buttonL/2&&mouseY>=b1y-buttonL/2){
      mode=GAME;
      AI=true;
  }
  if(mouseX<=b2x+buttonW&&mouseX>=b2x-buttonW/2&&mouseY<=b1y+buttonL/2&&mouseY>=b1y-buttonL/2){
      mode=GAME;
      AI=false;
  }
}

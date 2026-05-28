String start="Start";
int b1x=150,b1y=400,buttonW=150,bl=40;


void intro(){
button(b1x,b1y,buttonW,bl,start);

}

void introClick(){
  if(mouseX<=b1x+buttonW/2&&mouseX>=b1x-buttonW/2&&mouseY<=b1y+bl/2&&mouseY>=b1y-bl/2){
    mode=GAME; 
  }


}

int starWid=200,starLen=100,starX=400,starY=300;//int titleWid=400,titleLen=250,titleX=400,titleY=250;
String title="Clicker Game",Star="Start Game";
void intro(){
background(255);
Button(starX,starY,starWid,starLen,Star);
pushStyle();
textSize(70);
text(title,400,150);
popStyle();
}

void introClicks(){
 if(mouseX>=starX-starWid/2&&mouseX<=starX+starWid/2&&mouseY>=starY-starLen/2&&mouseY<=starY+starLen/2)
  mode=GAME;
}

int starWid=200,starLen=100,starX=400,starY=500;
String title="Clicked Game";
void intro(){
background(255);
Button(starX,starY,starWid,starLen,title);
}

void introClicks(){
 if(mouseX>=starX-starWid/2&&mouseX<=starX+starWid/2&&mouseY>=starY-starLen/2&&mouseY<=starY+starLen/2)
  mode=GAME;
}

void Button(float x,float y,float w,float l, String a){
pushStyle();
fill(255);
rect(x,y,w,l);
text(a,x,y);
pushStyle();
}

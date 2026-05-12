int starWid=200,starLen=100,starX=250,starY=300;
int setWid=200,setLen=100,setX=550,setY=300;
float xx1=width*7,yy1=height*3,   xx2=width*2,yy2=height/1.2,     xx3=width*3,yy3=height*3;
float vx1=5,vx2=-5,vx3=-5;float vy1=5,vy2=-5,vy3=5;

String title="Clicker Game",Star="Start Game",set="Setting",highscore="Highest Score:";


void intro(){
pushStyle();
background(xx1/10,0,yy1);
popStyle();

pushStyle();

yuan1(xx1,yy1);yuan1(xx2,yy2);yuan1(xx3,yy3);
xx1+=vx1;yy1+=vy1;xx2+=vx2;yy2+=vy2;xx3+=vx3;yy3+=vy3;
pushStyle();


Button(starX,starY,starWid,starLen,Star);
Button(setX,setY,setWid,setLen,set);
text(highscore+highScore,400,400);
pushStyle();
textSize(70);
fill(xx1,yy1,0);
text(title,400,150);
popStyle();

if(xx1<=0||xx1>=width)vx1*=-1;
if(yy1<=0||yy1>=height)vy1*=-1;
if(xx2<=0||xx2>=width)vx2*=-1;
if(yy2<=0||yy2>=height)vy2*=-1;
if(xx3<=0||xx3>=width)vx3*=-1;
if(yy3<=0||yy3>=height)vy3*=-1;

}

void introClicks(){
 if(mouseX>=starX-starWid/2&&mouseX<=starX+starWid/2&&mouseY>=starY-starLen/2&&mouseY<=starY+starLen/2)
     mode=LEVEL;
 else if(mouseX>=setX-starWid/2&&mouseX<=setX+starWid/2&&mouseY>=setY-starLen/2&&mouseY<=setY+starLen/2)
     mode=SET;
}

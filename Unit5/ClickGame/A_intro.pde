int starWid=200,starLen=100,starX=250,starY=300;//int titleWid=400,titleLen=250,titleX=400,titleY=250;
int setWid=200,setLen=100,setX=550,setY=300;
float xx1=width,yy1=height/8,xx2=width/2,yy2=height/2,xx3=width/4,yy3=height;
float vx1=5,vx2=-5,vx3=-5;float vy1=5,vy2=-5,vy3=5;

String title="Clicker Game",Star="Start Game",set="Setting";


void intro(){
background(255);
yuan(xx1,yy1);yuan(xx2,yy2);yuan(xx3,yy3);
xx1+=vx1;yy1+=vy1;xx2+=vx2;yy2+=vy2;xx3+=vx3;yy3+=vy3;

Button(starX,starY,starWid,starLen,Star);
Button(setX,setY,setWid,setLen,set);

pushStyle();
textSize(70);
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

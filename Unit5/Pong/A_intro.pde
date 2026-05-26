int buttonW=200,buttonL=50,b1x=250,b1y=350,b2x=b1x+300;

float ccw=100;

float lly=height/2;
float rry=height/2;

float llx=ccw/2-50;
float rrx=800;

float bbx=width/2;
float bby=height/2;

float bbw=50;

float ssp=15;

void intro(){

background(0);

backGame();

start.play();
//title
pushStyle();

textAlign(CENTER,CENTER);

textSize(100);

fill(255);

text("PONG",width/2,120);

popStyle();

button(b1x,b1y,buttonW,buttonL,mo1);
button(b2x,b1y,buttonW,buttonL,mo2);
}

void introClick(){

  if(mouseX<=b1x+buttonW/2&&mouseX>=b1x-buttonW/2&&mouseY<=b1y+buttonL/2&&mouseY>=b1y-buttonL/2){
  
    mode=GAME;
    
    AI=true;
  }

  if(mouseX<=b2x+buttonW/2&&mouseX>=b2x-buttonW/2&&mouseY<=b1y+buttonL/2&&mouseY>=b1y-buttonL/2){
  
    mode=GAME;
    
    AI=false;
  }
}

void backGame(){

pushStyle();

strokeWeight(6);

stroke(255);

line(width/2,0,width/2,height);

noFill();

circle(width/2,height/2,height/4);

//left paddle
fill(brown);

circle(llx,lly,ccw);

//right paddle
fill(0,0,255);

circle(rrx,rry,ccw);

//ball
fill(255,0,0);

circle(bbx,bby,bbw);

//move
bbx+=vx;
bby+=vy;

//top and bottom
if(bby<=bbw/2||bby>=height-bbw/2){
vy*=-1;
}

//reset
if(bbx<0||bbx>width){

bbx=width/2;
bby=height/2;

vx=random(2,5);

if(random(1)<0.5){
vx*=-1;
}

vy=random(-3,3);
}

//AI right
if(bbx>=width/2){

if(bby>rry+ssp){
    rry+=ssp;
  }
  
  else if(bby<rry-ssp){
    rry-=ssp;
  }
}

//AI left
else{

  if(bby>lly+ssp){
    lly+=ssp;
  }
  
  else if(bby<lly-ssp){
    lly-=ssp;
  }
}

//bounds
lly=constrain(lly,ccw/2,height-ccw/2);
rry=constrain(rry,ccw/2,height-ccw/2);

//left paddle
if(dist(llx,lly,bbx,bby)<=(ccw+bbw)/2){

vx=10;

vy=(bby-lly)/10;
}

//right paddle
if(dist(rrx,rry,bbx,bby)<=(ccw+bbw)/2){

vx=-10;

vy=(bby-rry)/10;
}

popStyle();
}

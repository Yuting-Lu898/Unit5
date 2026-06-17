int buttonW=200, buttonL=50, b1x=250, b1y=350, b2x=b1x+300;
float ccw=100;
float vvx=2, vvy=2;
float lly=height/2, rry=height/2, llx=ccw/2-50, rrx=800;
float bbx=400, bby=height/2, bbw=50;
float ssp=20;

String set="Setting",back="Intro";

void intro() {
  //background(0);
    theme.play();
  image(background,0,0,800,500);
  //title
  textAlign(CENTER, CENTER);
  textSize(100);

  fill(255);
  text("TWO CARS", width/2, 120);
  button(b1x, b1y, buttonW, buttonL, mo2);
  button(b2x, b1y, buttonW, buttonL, set);
}

void introClick() {
  if (mouseX>=b1x-buttonW/2&&mouseX<=b1x+buttonW&&mouseY>=b1y-buttonL/2&&mouseY<=b1y+buttonL)mode=GAME;
  if (mouseX>=b2x-buttonW/2&&mouseX<=b2x+buttonW&&mouseY>=b1y-buttonL/2&&mouseY<=b1y+buttonL)mode=SET;
}

void basicSet() {
  pushStyle();//basic set
  strokeWeight(6);
  stroke(255);
  line(width/2, 0, width/2, height);
  noFill();
  circle(width/2, height/2, height/4);
  //left paddle
  fill(brown);
  circle(llx, lly, ccw);
  //right paddle
  fill(0, 0, 255);
  circle(rrx, rry, ccw);
  //ball
  fill(255, 0, 0);
  circle(bbx, bby, bbw);
}

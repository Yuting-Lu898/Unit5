color brown = #8B5E3C, softTerracotta = #C97B63,black=#FFFFFF;
int rScore=0, lScore=0;
//accelaration
float speed1=2, speed2=2;
float minSpeed=2, maxSpeed=8;
float accel=0.15, decel=0.08;
float turnSpeed=1;

int time=800;
float x1=200, y1=400, x2=400, y2=400;
//rotation
float angle1=0, angle2=0;
//vx
float car1vx, car2vx;
//road
int roadspa=150, roadhe=80, linew=5, linel=20, move=3;
//life
int life1=4, life2=4;

void game() {
  background(0, 255, 0);
  //backroad
  drawing();
  //limit
  x1=constrain(x1, 10, 790);
  x2=constrain(x2, 10, 790);
  y1+=1;y2+=1;
  
  if (y1>height+30) {
    life1--;
    y1=height/2-50;
  }
  if (y2>height+30) {
    life2--;
    y2=height/2-50;
  }

  //Car 1 up and down
  if (wkey||skey) {
    speed1+=accel;
    if (speed1>maxSpeed) speed1=maxSpeed;
  } else {
    speed1-=decel;
    if (speed1<minSpeed)speed1=minSpeed;
  }

  if (wkey)y1-=speed1;
  if (skey)y1+=speed1;
  //car2 up and down
  if (upkey||downkey) {
    speed2+=accel;
    if (speed2>maxSpeed)speed2=maxSpeed;
  } else {
    speed2-=decel;
    if (speed2<minSpeed)speed2=minSpeed;
  }

  if (upkey)y2-=speed2;
  if (downkey)y2+=speed2;
  x1+=car1vx;
  car1vx*=0.9;

  //car2 left right
  if (lekey)car2vx-=turnSpeed;
  if (rikey)car2vx+=turnSpeed;
  x2+=car2vx;

  car2vx*=0.9;
  x2+=car2vx;
  car2vx*=0.9;
  if (akey)car1vx-=turnSpeed;

  if (dkey)  car1vx+=turnSpeed;
  x1+=car1vx;
  car1vx*=0.9;


  //angle
  angle1=map(constrain(car1vx, -5, 5), -10, 10, radians(-45), radians(45));
  angle2=map(constrain(car2vx, -5, 5), -10, 10, radians(-45), radians(45));

  //car1
  carTurn(x1, y1, angle1, brown);
  //car2
  carTurn(x2, y2, angle2, softTerracotta);


  if (x1 + 40 >= x2 &&     // r1 right edge past r2 left
    x1 <= x2 + 40 &&       // r1 left edge past r2 right
    y1 + 70 >= y2 &&       // r1 top edge past r2 bottom
    y1 <= y2 + 70) {// r1 bottom edge past r2 top
    crash();
    }
}

void gameClick() {
}

void drawing() {
  //road
  pushStyle();
  strokeWeight(50);
  stroke(255);
  rect(15, 0, 30, height*2);
  rect(width-15, 0, 30, height*2);
  //dash cycle
  if (move>=80)move=0;
  for (int i=30; i<width-30; i+=roadspa) {
    for (int j=-roadhe+move; j<width; j+=roadhe) {
      dashline(i, j, linew, linel);
    }
  }
  move+=5;
  popStyle();
  comeCars();
}

void comeCars(){
comeCar(200,400,black);
  
}

void crash() {
  float dx=(x1-x2)/10;
  for (int i=0; i<dx; i++) {
    x1+=dx;
    x2-=dx;
  }
  car1vx+=dx*5;
  car2vx-=dx*5;
}

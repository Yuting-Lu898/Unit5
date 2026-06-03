color brown = #8B5E3C,softTerracotta = #C97B63;
int rScore=0,lScore=0;
float vx=2;
float vy=2;
float sp=5;int time=800;
float x1=400,y1=400,x2=300,y2=400;
//rotation
float angle1=0,angle2=0;
//vx
float car1vx,car2vx;

void game(){
  background(0,255,0);
  //limit
  x1=constrain(x1,10,790);
  y1=constrain(y1,20,480);
  x2=constrain(x2,10,790);
  y2=constrain(y2,20,480);
  
  //Car 1 up and down
  if(wkey)y1-=5;
  if(skey)y1+=5;
  //car2 up and down
  if(upkey)y2-=5;
  if(downkey)y2+=5;

  //car1 left right
  if(akey)car1vx-=vx;
  if(dkey)car1vx+=vx;
  x1+=car1vx;
  car1vx*=0.9;
   //car2 left right
  if(lekey)car2vx-=vx;
  if(rikey)car2vx+=vx;
  x2+=car2vx;
  car2vx*=0.9;
  
  
  //angle
  angle1=map (car1vx, -vx, vx, radians(-20), radians(20));
  angle2=map (car2vx, -vx, vx, radians(-20), radians(20));
  
  //car1
  pushMatrix();
  translate(x1,y1);
  rotate(angle1);
  car(0,0,brown);
  popMatrix();
  //car2
  pushMatrix();
  translate(x2,y2);
  rotate(angle2);
  car(0,0,softTerracotta);
  popMatrix();

  //x = x + vx;
  //vx = vx * 0.99;
  //angle = map (vx, -5, 5, radians(-45), radians(45));



}

void gameClick(){
}

void drawing(){
}

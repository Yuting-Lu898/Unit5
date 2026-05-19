void game(){
  //paddle
background(255);
circle(lx,ly,ld);
circle(rx,ry,rd);

//ball
circle(ballx,bally,balld);

if(wkey==true)ly-=5;
if(skey==true)ly+=5;
if(upkey==true)ry-=5;
if(downkey==true)ry+=5;

}

void gameClick(){



}

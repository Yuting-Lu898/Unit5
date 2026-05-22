void keyPressed(){
if(key=='w'||key=='W')wkey=true;
if(key=='s'||key=='S')skey=true;

if(!AI){
  if(keyCode==UP)upkey=true;
  if(keyCode==DOWN)downkey=true;
}
else{
  if(ballx>=width/2){
    if(bally<ry){
      ry+=vx;
    }
    else{
      ry-=vx;
    }
  
  }
  
}

}


void keyReleased(){
if(key=='w'||key=='W')wkey=false;
if(key=='s'||key=='S')skey=false;
if(keyCode==UP)upkey=false;
if(keyCode==DOWN)downkey=false;

}

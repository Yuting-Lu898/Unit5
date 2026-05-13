 void setup(){
  size(400,400);
}

int widSpa=10,lenSpa=10,space=20;
void draw(){
  noFill();
 for(int i=0;i<width/space;i+=1){
    rect(width/2-space*i-space,width/2-space*i-space,width/space+2*i*space,height/space+2*i*space);
 }
  
}

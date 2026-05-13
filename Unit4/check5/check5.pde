void setup(){
  size(400,400);
}

int space=5,x=0,y=0;

void draw(){
 for(int i=0;i<width;i+=space){
    x+=space;y+=space;
    line(0,x,y,400);
    line(y,0,400,x);
   }
  
}

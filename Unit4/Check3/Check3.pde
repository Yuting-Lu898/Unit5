void setup(){
  size(400,400);
}

int space=50,x=0,y=0;

void draw(){
 for(int i=0;i<width;i+=space){
    x+=space;y+=space;
    line(x,0,0,y);
   }
 }
  

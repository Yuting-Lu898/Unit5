void setup(){
  size(400,400);
}

void draw(){
 for(int i=0;i<width;i+=20){
   line(i,0,i,height);
   line(0,i,height,i);
 }
  
}

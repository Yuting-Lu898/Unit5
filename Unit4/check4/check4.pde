void setup(){
  size(400,400);
}
int space=40;
void draw(){
 for(int i=0;i<width+height;i+=space){
   noFill();
   circle(width/2,height/2,i);
 }
  
}

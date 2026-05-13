 void setup(){
  size(400,400);
}

int widSpa=10,lenSpa=10,space=40;
void draw(){
  noFill();
 for(int i=0;i<height/space;i+=1){
    for(int j=0;j<width/space;j+=1){
      if(i%2==0){
        circle(space*j,space*i,space*2);
       // else triangle(space*(j+1),space*(i+1),  space*(j+1),space*i,  space*j,space*(i+1));
      }
     else{
       if(j%2==1)circle(space*(j+1),space*i,space*2);
       // else triangle(space*j,space*i,  space*(1+j),space*i,  space*j,space*(i+1));
      }
    }
 }
  
}

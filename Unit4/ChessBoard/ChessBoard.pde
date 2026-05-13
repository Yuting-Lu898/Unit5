 void setup(){
  size(400,400);
}

int widSpa=10,lenSpa=10,space=40;
void draw(){
  
 for(int i=0;i<width/space;i+=1){
    for(int j=0;j<width/space;j+=1){
      if(i%2==0){
        if(j%2==0)fill(255);
        else fill(0);  
      }
      else{
        if(j%2==0)fill(0);
        else fill(255);  
      }
     rect(space*i,j*space,space,space); 
    }
 }
  
}

 void setup(){
  size(400,400);
}

int widSpa=10,lenSpa=10,wid=40,space=wid/2+2;
void draw(){
  
 for(int i=0;i<=width/wid;i+=1){
    for(int j=0;j<=width/wid;j+=1){
      if(i%2==0){
        if(j%2==0)fill(255);
        else fill(0);  
      }
      else{
        if(j%2==0)fill(0);
        else fill(255);  
      }
     cube(wid*i,j*wid); 
    }
 }
  
}

void cube(int x,int y){
  rect(x,y,wid,wid);
  rect(x-space,y-space,6,6);
  
}

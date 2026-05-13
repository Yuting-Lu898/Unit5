 void setup(){
  size(400,400);
}
color lightGray = #D3D3D3,darkGray = #444444,warmGray = #E8E4D8;

int widSpa=10,lenSpa=10,space=40;
void draw(){
  translate(-20,-20);
  fill(0);
 for(int i=0;i<=height/space;i+=1){
    for(int j=0;j<=width/space;j+=1){
      if(i%3==0){
        if(j%3==0)cir(space*j,space*i,1);
        else if(j%3==1) cir(space*j,space*i,2);
        else cir(space*j,space*i,3);
      }
     else if(i%3==1){
       if(j%3==0)cir(space*j,space*i,3);
        else if(j%3==1) cir(space*j,space*i,1);
        else cir(space*j,space*i,2);
     }
      else {
         if(j%3==0)cir(space*j,space*i,2);
        else if(j%3==1) cir(space*j,space*i,3);
        else cir(space*j,space*i,1);
      }
    }
 }
  
}

void cir(float x,float y, int a){
  stroke(255);
if(a==1)fill (lightGray);
else if(a==2) fill(darkGray);
else fill(warmGray);
circle(x,y,space);
circle(x,y,space/4*3);
circle(x,y,space/2);
circle(x,y,space/4);
}

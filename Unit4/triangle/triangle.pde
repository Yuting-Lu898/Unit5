 void setup(){
  size(400,400);
}

int widSpa=10,lenSpa=10,space=40;
void draw(){
  fill(0);
 for(int i=0;i<height/space;i+=1){
    for(int j=0;j<width/space;j+=1){
      if(i%2==0){
        if(j%2==0)triangle(space*j,space*i,  space*(1+j),space*i,  space*(j+1),space*(i+1));
        else if(j%2==1) triangle(space*(j+1),space*(i+1),  space*(j+1),space*i,  space*j,space*(i+1));
      }
     else{
       if(j%2==1)triangle(space*(j+1),space*(i+1),  space*(j),space*i,  space*j,space*(i+1));
        else triangle(space*j,space*i,  space*(1+j),space*i,  space*j,space*(i+1));
      }
    }
 }
  
}


//for(int i=0;i<height/space;i+=1){
//    for(int j=0;j<width/space;j+=1){
//      if(i%2==1){
//        if(j%2==0)triangle(space*j,space*i,  space*(1+j),space*i,  space*(j+1),space*(i+1));
//        else triangle(space*(i+1),space*(j+1),  space*(i+1),space*j,  space*i,space*(j+1));
//      }
//     else{
//       if(j%2==1)triangle(space*j,space*i,  space*(1+j),space*i,  space*j,space*(i+1));
//        else triangle(space*(i+1),space*(j+1),  space*(i),space*j,  space*i,space*(j+1));
//      }
//    }
// }

//select Image
void selectImage(int x,int y,PImage a){
  if(mouseX>x&&mouseX<x+wid-5&&mouseY>y&&mouseY<y+leng+15){
    if(choose==a){
      choose=null;
    }else{
      choose=a;
    }
  }
}

void DrawImage(int x,int y,PImage a){
  stroke(0);
  imgx=180;
  imgy=90;
  image(a,x-70*imageSize,y-30*imageSize,imgx*imageSize,imgy*imageSize);
}

void Image(int x,int y,PImage a){
  
  int c,d;
  
  if(mouseX>x&&mouseX<x+wid-5&&mouseY>y&&mouseY<y+leng+15){
    imgx=180;
    imgy=90;
    
    fill(255);
    
    c=130;
    d=90;
  }
  else{
    c=wid-8;
    d=leng+10;
    
    fill(0);
    imgx=60;
    imgy=30;
  }
  
  if(choose==a){
    stroke(255,0,0);
  }else{
    stroke(0);
  }
  rect(x,y,c,d);
  image(a,x-15,y,imgx,imgy);
}

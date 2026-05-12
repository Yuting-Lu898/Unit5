void Button(float x,float y,float w,float l, String a){
pushStyle();
 if(mouseX>=x-w/2&&mouseX<=x+l/2&&mouseY>=y-l/2&&mouseY<=y+l/2){
      stroke(255,0,0);
    }else{
      stroke(0);
    }
fill(255);
strokeWeight(5);
rect(x,y,w,l);
fill(255,0,0);
textSize(30);
text(a,x,y+10);
popStyle();
}

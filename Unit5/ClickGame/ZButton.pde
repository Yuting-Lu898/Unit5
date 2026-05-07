void Button(float x,float y,float w,float l, String a){
pushStyle();
fill(255);
rect(x,y,w,l);
fill(255,0,0);
textSize(30);
text(a,x,y+10);
pushStyle();
}

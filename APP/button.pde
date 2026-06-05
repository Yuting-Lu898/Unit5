//all button-----------------------
void button1(){
  rectButton(row1,col1,red,lightRed,darkRed);  rectButton(row1,col2,orange,lightOrange,darkOrange);  rectButton(row1,col3,yellow,lightYellow,darkYellow);  rectButton(row1,col4,green,lightGreen,black);  rectButton(row1,col5,mutedGreen,leaf,moss);  rectButton(row1,col6,blue,lightBlue,darkBlue);  rectButton(row1,col7,dustyBlue,sky,ocean); rectButton(row1,col8,purple,lightPurple,darkPurple);rectButton(row1,col9,softGold,paleYellow,softTerracotta);rectButton(row1,col10,skinLight,skinMid,skinDark);
  stroke(0);
button(60,360,cle);button(60,300,load);button(60,330,ne);
cirButton(150,300,60);
}


//selectedColor---------------------------------------------
void select(int x,int y,color a,color b, color c){
  se(x,y,a);
  se(x+wid,y,b);
  se(x+2*wid,y,c);
 selectBut(60,360,cle);
 selectBut(60,300,load);
 selectBut(60,330,ne);
 }

void se(int x,int y,color a){
   if(mouseX>x && mouseX<wid+x&&mouseY>y && mouseY<leng+y) 
     selectedColor=a;
}

//rectbutton-----------------
void rectButton(float x, float y, color a,color b,color c){
    bu(x,y,a);
    bu(x+wid,y,b);
    bu(x+wid*2,y,c);
}

void bu(float x,float y, color a){
 if( mouseX>x && mouseX<x+wid && mouseY>y && mouseY<y+leng) 
       stroke(white);
    else 
       stroke(0);
    fill(a);
    rect(x,y,wid,leng);
}
void button(int x,int y, String a){
  if( mouseX>x && mouseX<x+wid && mouseY>y && mouseY<y+leng) 
       stroke(white);
    else 
       stroke(0);
fill(255);
rect(x,y,wid,leng);
fill(0);
text(a,x+20,y+15);
stroke(0);
}



void cirButton(float x,float y,float d){
//hover
if(dist(mouseX,mouseY,x,y)<d/2){
stroke(255);
}else{
stroke(0);
}

//button
fill(255);
circle(x,y,d);

//text
fill(0);
stroke(0);
}

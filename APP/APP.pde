color white=#FFFFFF, black=#000000;
String fileName = "myDrawing.png";
color lightGray = #D3D3D3;color darkGray = #444444;color warmGray = #E8E4D8;color coolGray = #B0BEC5;color darkCharcoal = #2E2E2E;color red = #E63946;color lightRed = #FF6B6B;color darkRed = #A4161A;color orange = #F77F00;color lightOrange = #FFB703;color darkOrange = #C05600;color yellow = #FFD60A;color lightYellow = #FFF3B0;color darkYellow = #C9A000;color green = #2A9D8F;color lightGreen = #8FD3A9;color darkGreen = #1B7F6B;color mutedGreen = #7A8F6B;color leaf = #4CAF50;color moss = #6B8E23;color lightSage = #C9D4C5;color blue = #3A86FF;color lightBlue = #90CAF9;color darkBlue = #1D4ED8;color dustyBlue = #6B7C8F;color sky = #87CEEB;color ocean = #1CA3EC;color purple = #8338EC;color lightPurple = #CDB4DB;color darkPurple = #5A189A;color softGold = #E6C068;color paleYellow = #F5E6A9;color softTerracotta = #C97B63; color skinLight = #FAD2C9;color skinMid = #E0AC69;color skinDark = #8D5524;color brown = #8B5E3C;color sand = #EED9C4;
//allColor------------------------------------------------
color selectedColor;
float slideY=30;
PImage allBlack,choose,bo;
boolean allblAct,cleanAct,newAct,loadAct,bool;float imageSize=0,lineSize=0;;
int wid=40,leng=20;float imgx=120,imgy=60;
int x=50,y=0;int row1=x;int col1=y,col2=col1+leng, col3=col2+leng, col4=col3+leng, col5=col4+leng, col6=col5+leng, col7=col6+leng, col8=col7+leng, col9=col8+leng, col10=col9+leng; 
String ne="Save",cle="Clear",load="Load";

void setup(){
  size(700,400);
  background(255);
  allBlack=loadImage("Haka.png");
  bo=loadImage("rrr.png");
}

void draw(){
stroke(0);
back();
//slide
slide(slideY);
//button
button1();
//drawBoard
fill(selectedColor);
rect(650,0,50,30);
Image(50,240,bo);
Image(50,200,allBlack);

}

//--------------
void back(){
fill(200);
rect(0,0,200,400);
}

//slide----------------------------
void slide(float y){
pushMatrix();
textAlign(CENTER);
fill(255,0,0);
line(20,30,20,350);
circle(20,y,30);
pushStyle();
fill(0);
text(lineSize,20,y+3);
popStyle();
popMatrix();
}

 

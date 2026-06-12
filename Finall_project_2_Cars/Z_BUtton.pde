int oo=300;
void button(float x, float y, float w, float l, String a) {
  pushStyle();
  if (mouseX>=x-w/2&&mouseX<=x+w/2&&mouseY>=y-l/2&&mouseY<=y+l/2) {
    stroke(255, 0, 0);
  } else {
    stroke(0);
  }
  fill(255);
  strokeWeight(5);
  rect(x, y, w, l);
  fill(255, 0, 0);
  textSize(30);
  text(a, x, y+10);
  popStyle();
}


//selectedColor---------------------------------------------
void select1(int x, int y, color a, color b, color c) {
  se1(x, y, a);
  se1(x+wid, y, b);
  se1(x+2*wid, y, c);
}
void select2(int x, int y, color a, color b, color c) {
  se2(x, y, a);
  se2(x+wid, y, b);
  se2(x+2*wid, y, c);
}

void mousePressed(){
  //select color
  selectCol1();
}
void se1(int x, int y, color a) {
  if (mouseX>x-wid/2 && mouseX<wid/2+x&&mouseY>y-leng/2 && mouseY<leng/2+y)
    selectedColor1=a;
}
void se2(int x, int y, color a) {
  if (mouseX>x-wid/2 && mouseX<wid/2+x&&mouseY>y-leng/2 && mouseY<leng/2+y)
    selectedColor2=a;
}

//rectbutton-----------------
void rectButton(float x, float y, color a, color b, color c) {
  bu(x, y, a);
  bu(x+wid, y, b);
  bu(x+wid*2, y, c);
}

void bu(float x, float y, color a) {
  if ( mouseX>x-wid/2 && mouseX<x+wid/2 && mouseY>y-leng/2 && mouseY<y+leng/2)
    stroke(white);
  else
    stroke(0);
  fill(a);
  rect(x, y, wid, leng);
}

void selectCol1(){
  select1(row1, col1, red, lightRed, darkRed);
  select1(row1, col2, orange, lightOrange, darkOrange);
  select1(row1, col3, yellow, lightYellow, darkYellow);
  select1(row1, col4, green, lightGreen, black);
  select1(row1, col5, mutedGreen, leaf, moss);
  select1(row1, col6, blue, lightBlue, darkBlue);
  select1(row1, col7, dustyBlue, sky, ocean);
  select1(row1, col8, purple, lightPurple, darkPurple);
  select1(row1, col9, softGold, paleYellow, softTerracotta);
  select1(row1, col10, skinLight, skinMid, skinDark);
  
  select2(row1+oo, col1, red, lightRed, darkRed);
  select2(row1+oo, col2, orange, lightOrange, darkOrange);
  select2(row1+oo, col3, yellow, lightYellow, darkYellow);
  select2(row1+oo, col4, green, lightGreen, black);
  select2(row1+oo, col5, mutedGreen, leaf, moss);
  select2(row1+oo, col6, blue, lightBlue, darkBlue);
  select2(row1+oo, col7, dustyBlue, sky, ocean);
  select2(row1+oo, col8, purple, lightPurple, darkPurple);
  select2(row1+oo, col9, softGold, paleYellow, softTerracotta);
  select2(row1+oo, col10, skinLight, skinMid, skinDark);

}

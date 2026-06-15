void setting() {
  background(255);
  button1();
   //car1
  carTurn(x1, y1, angle1, selectedColor1,1);
  //car2
  carTurn(x2+200, y2, angle2, selectedColor2,2);
  
  button(width/2, b1y, buttonW, buttonL, back);
}

void settingClick() {
  if (mouseX>=width/2-buttonW/2&&mouseX<=b2x+buttonW&&mouseY>=b1y-buttonL/2&&mouseY<=b1y+buttonL)mode=INTRO;
}

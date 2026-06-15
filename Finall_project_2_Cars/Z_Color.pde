//color
color white=#FFFFFF;
color lightGray = #D3D3D3;
color darkGray = #444444;
color warmGray = #E8E4D8;
color coolGray = #B0BEC5;
color darkCharcoal = #2E2E2E;
color red = #E63946;
color lightRed = #FF6B6B;
color darkRed = #A4161A;
color orange = #F77F00;
color lightOrange = #FFB703;
color darkOrange = #C05600;
color yellow = #FFD60A;
color lightYellow = #FFF3B0;
color darkYellow = #C9A000;
color green = #2A9D8F;
color lightGreen = #8FD3A9;
color darkGreen = #1B7F6B;
color mutedGreen = #7A8F6B;
color leaf = #4CAF50;
color moss = #6B8E23;
color lightSage = #C9D4C5;
color blue = #3A86FF;
color lightBlue = #90CAF9;
color darkBlue = #1D4ED8;
color dustyBlue = #6B7C8F;
color sky = #87CEEB;
color ocean = #1CA3EC;
color purple = #8338EC;
color lightPurple = #CDB4DB;
color darkPurple = #5A189A;
color softGold = #E6C068;
color paleYellow = #F5E6A9;
color softTerracotta = #C97B63;
color skinLight = #FAD2C9;
color skinMid = #E0AC69;
color skinDark = #8D5524;
color brown = #8B5E3C;
color sand = #EED9C4, black=#FFFFFF;
color selectedColor1=orange,selectedColor2=yellow;

//all button-----------------------
void button1() {
  rectButton(row1, col1, red, lightRed, darkRed);
  rectButton(row1, col2, orange, lightOrange, darkOrange);
  rectButton(row1, col3, yellow, lightYellow, darkYellow);
  rectButton(row1, col4, green, lightGreen, black);
  rectButton(row1, col5, mutedGreen, leaf, moss);
  rectButton(row1, col6, blue, lightBlue, darkBlue);
  rectButton(row1, col7, dustyBlue, sky, ocean);
  rectButton(row1, col8, purple, lightPurple, darkPurple);
  rectButton(row1, col9, softGold, paleYellow, softTerracotta);
  rectButton(row1, col10, skinLight, skinMid, skinDark);
  
  rectButton(row1+oo, col1, red, lightRed, darkRed);
  rectButton(row1+oo, col2, orange, lightOrange, darkOrange);
  rectButton(row1+oo, col3, yellow, lightYellow, darkYellow);
  rectButton(row1+oo, col4, green, lightGreen, black);
  rectButton(row1+oo, col5, mutedGreen, leaf, moss);
  rectButton(row1+oo, col6, blue, lightBlue, darkBlue);
  rectButton(row1+oo, col7, dustyBlue, sky, ocean);
  rectButton(row1+oo, col8, purple, lightPurple, darkPurple);
  rectButton(row1+oo, col9, softGold, paleYellow, softTerracotta);
  rectButton(row1+oo, col10, skinLight, skinMid, skinDark);
  stroke(0);
}

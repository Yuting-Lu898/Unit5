String l="Player1 WIN", r="Player2 WIN", ti="TIE";
void gameover() {
  life1=life2=4;
  if (life1!=0) {
    pushStyle();
    textSize(50);
    fill(brown);
    text(l, width/2, height/2);

    popStyle();
  } else if (life1==life2) {
    fill(255);
    text(ti, width/2, height/2);
  } else {
    pushStyle();
    textSize(50);
    fill(0, 0, 255);
    text(r, width/2, height/2);

    popStyle();
  }

  button(width/2, height/2+100, 220, 70, "RESTART");
}



void gameoverClick() {
  if(mouseX>=width/2-110&&mouseX<=width/2+110&&mouseY<=height/2+135&&mouseY>=height/2-135)mode=INTRO;
}

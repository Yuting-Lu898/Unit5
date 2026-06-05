String l="LEFT WIN", r="RIGHT WIN", ti="TIE";
void gameover() {
  if (lScore>rScore) {
    pushStyle();
    textSize(50);
    fill(brown);
    text(l, width/2, height/2);

    popStyle();
  } else if (lScore==rScore) {
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
}

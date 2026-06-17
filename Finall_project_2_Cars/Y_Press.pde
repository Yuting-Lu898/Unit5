void keyPressed() {
  if (key=='w'||key=='W') {
    wkey=true;
    engine.play();
    engine.rewind();
  }
  if (key=='s'||key=='S') {
    skey=true;
    engine.play();
    engine.rewind();
  }
  if (key=='a'||key=='A')akey=true;
  if (key=='d'||key=='D')dkey=true;

  if (keyCode==UP) {
    upkey=true;
    engine.play();
    engine.rewind();
  }
  if (keyCode==DOWN) {
    downkey=true;
    engine.play();
    engine.rewind();
  }
  if (keyCode==RIGHT)rikey=true;
  if (keyCode==LEFT)lekey=true;
}


void keyReleased() {
  if (key=='w'||key=='W') {
    wkey=false;
    engine.pause();
  }
  if (key=='s'||key=='S') {
    skey=false;
    engine.pause();
  }
  if (key=='a'||key=='A')akey=false;
  if (key=='d'||key=='D')dkey=false;

  if (keyCode==UP) {
    upkey=false;
    engine.pause();
  }
  if (keyCode==DOWN) {
    downkey=false;
    engine.pause();
  }
  if (keyCode==RIGHT)rikey=false;
  if (keyCode==LEFT)lekey=false;
}

void car(float x, float y, color c) {
  pushMatrix();

  translate(x, y);
  //body
  fill(c);
  rectMode(CENTER);
  rect(0, 0, 40, 70, 8);
  //windshield
  fill(150, 200, 255);
  rect(0, -15, 25, 20, 5);
  //rear window
  rect(0, 15, 25, 20, 5);
  //wheels
  fill(30);
  rect(-20, -20, 8, 15);
  rect(20, -20, 8, 15);
  rect(-20, 20, 8, 15);
  rect(20, 20, 8, 15);
  //light
  fill (255, 255, 0);
  rect(-10, -30, 15, 10, 10);
  rect(10, -30, 15, 10, 10);
  popMatrix();
}

void carTurn(float x,float y,float angle,color so){
  pushMatrix();
  translate(x, y);
  rotate(angle);
  car(0, 0, so);
  popMatrix();

}

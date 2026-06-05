void dashline(int i, int j, int w, int l) {
  pushStyle();
  fill(255);
  rect(i, j, w/2, l);
  popStyle();
}

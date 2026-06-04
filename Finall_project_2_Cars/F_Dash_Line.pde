void dashline(int i, int j, int w, int l) {
  pushStyle();
  //if(alive[i][j]){
  fill(255);
  rect(i, j, w/2, l);
  //if(dist(brickX,brickY,bx,by)<=(pointW+bw)/2){
  //  score.play();
  //  score.rewind();
  //  alive[i][j]=false;
  //  Score++;
  //  vy*=-1;
  //}
  popStyle();
}

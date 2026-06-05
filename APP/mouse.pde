void mouseDragged(){
  if(bool==false&&allblAct==false&&mouseX>=200&&choose==null){
    pushStyle();
    strokeWeight(lineSize);
    stroke(selectedColor);
    line(pmouseX,pmouseY,mouseX,mouseY);
    popStyle();
  }
  if(mouseY>30 && mouseY<350 && mouseX<50 && mouseX>10){
    slideY=mouseY;
    lineSize=map(slideY, 30,300, 0,30);
    imageSize=map(slideY, 30,300, 0.1,2);
  }
}

//moveSlide-----------------------------------------
void mousePressed(){

  if(choose!=null&&mouseX>=200){
    DrawImage(mouseX,mouseY,choose);
  }
  
  if(mouseY>30&&mouseY<350&&mouseX<50&&mouseX>10){
  
    slideY=mouseY;
    
    lineSize=map(slideY,30,300,0,30);
    
    imageSize=map(slideY,30,300,0.1,2);
  }
}

//select color----------------------------
void mouseReleased(){
  
  if(dist(mouseX,mouseY,150,300)<30){
    selectedColor=white;
  }
  
  select(row1,col1,red,lightRed,darkRed);select(row1,col2,orange,lightOrange,darkOrange);select(row1,col3,yellow,lightYellow,darkYellow);select(row1,col4,green,lightGreen,black);select(row1,col5,mutedGreen,leaf,moss);select(row1,col6,blue,lightBlue,darkBlue);select(row1,col7,dustyBlue,sky,ocean);select(row1,col8,purple,lightPurple,darkPurple);select(row1,col9,softGold,paleYellow,softTerracotta);select(row1,col10,skinLight,skinMid,skinDark);
  //Image
  selectImage(50,200,allBlack);
  selectImage(50,240,bo);
  
  if(newAct==true){
    selectOutput("Save your image:","saveFile");
    newAct=false;
  }else if(loadAct==true){
    selectInput("Pick an image:","loadFile");
    loadAct=false;
  }
}

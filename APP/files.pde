//draw----------------------------

void selectBut(int x,int y,String a){
  if(mouseX>x && mouseX<wid+x&&mouseY>y && mouseY<leng+y) {
     if(a==cle)
       cleanAct=true;
     else if(a==load)
       loadAct=true;
     else if(a==ne)
       newAct=true;
  }
  if(cleanAct==true){
    background(255);
    cleanAct=false;
  }
}

void saveFile(File selection){
  if(selection==null){
    println("Save cancelled");
  } else {
    PImage canvas=get(200, 0, 500, 400);
    canvas.save(selection.getAbsolutePath());
    println("Saved to: "+selection.getAbsolutePath());
  }
}

void loadFile(File selection){
  if(selection!=null){
    int n=0;
    while(n<10){
      PImage img=loadImage(selection.getAbsolutePath());
      image(img, 200, 0, 500, 400); 
      n++;
    }
  }
}

PImage museum;
 
 void setup(){
  size(800,600);
  museum=loadImage("museum.jpg");
}

int widSpa=10,lenSpa=10,space=20;
float scale=0.5;
float showerWid=50*scale,showerLeng=100*scale,showerDif=10*scale,showerDe=110*scale;
void draw(){
 
  image(museum,0,0,width,height);
  showerHub();
  cup(550,480);
  pushMatrix();
  translate(300,250);
  girl(100,120);
  popMatrix();
  pushMatrix();
  translate(350,175);
  father(250,120);
  popMatrix();
}


void showerHub(){
shower(500,450);
}

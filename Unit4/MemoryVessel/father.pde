void father(float x,float y){
  fill(165, 42, 42);
  stroke(165,42,42);
//legs
triangle(x-10,y+150,x-13,y+250,x+15,y+250);
triangle(x-10,y+150,x+20,y+150,x+15,y+250);
triangle(x+50,y+150,x+20,y+150,x+23,y+250);
triangle(x+53,y+250,x+50,y+150,x+23,y+250);
fill(255, 224, 189);
//right arm
stroke(0);
pushMatrix();
rotate(radians(-15));
rect(x-140,y+120,100,20,5);
popMatrix();
//left arm;
pushMatrix();
rotate(radians(-10));
rect(x+10,y+110,20,100,10);
popMatrix();

fill(0);
circle(x+7,y+5,20);//hair
circle(x+25,y+5,30);
fill(255, 224, 189);
rect(x-space,y+50,showerLeng*1.6,showerDe*2,50);//body
// body (shirt - uniform style)
fill(200, 230, 255);  // 
rect(x-space, y+50, showerLeng*1.6, showerDe*2, 20);

// collar
fill(255);
triangle(x, y+50, x+20, y+50, x+10, y+70);
triangle(x+30, y+50, x+50, y+50, x+40, y+70);

// pocket
fill(180, 210, 240);
rect(x+35, y+80, 25, 25, 5);
line(x+35, y+92, x+60, y+92);

// buttons
for (float i = y+70; i <= y+130; i += 20){
  fill(50, 90, 150);
  circle(x+24, i, 5);
}
fill(255, 224, 189);
rect(x,y,40,50,50);//face
noFill();
circle(x+10,y+15,15);
fill(0);
circle(x+5,y+17,5);

noFill();
circle(x+30,y+15,15);
fill(0);
circle(x+27,y+17,5);

noFill();
arc(x + 20, y + 40, 25, 15, PI, TWO_PI);

}

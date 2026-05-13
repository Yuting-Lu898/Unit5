void girl(float x,float y){
pushStyle();
pushMatrix();
fill(0);
circle(x+space,y,showerDe);//hair

fill(0,255,255);


rect(x-space,y+25,showerLeng*1.6,showerDe*2,50);//body


fill(255, 224, 189);
rect(x,y,40,25,50);//face
line(x + 12, y + 11, x + 18, y + 13);
line(x + 22, y + 13, x + 28, y + 11);

//line(x + 10, y + 7, x + 18, y + 9);
//line(x + 22, y + 9, x + 30, y + 7);


noFill();
arc(x + 20, y + 21, 18, 12, PI, TWO_PI);

stroke(0,0,255);
line(x + 14, y + 14, x + 14, y + 22);
line(x + 26, y + 14, x + 26, y + 22);
stroke(0);

rotate(radians(-5));
rect(x-lenSpa-20,y+showerWid*1.8+25,showerLeng*0.7,showerDe*1.4,50);//right leg
rect(x-lenSpa+showerLeng*0.6-20,y+showerWid*1.8+25,showerLeng*0.7,showerDe*1.4,50);//left leg
rotate(radians(15));
fill(255, 224, 189);
rect(x+25,y+35,showerLeng*0.55,showerDe*1.6,50);//right fore leg
rect(x+50,y+30,showerLeng*0.55,showerDe*1.6,50);//left fore leg
rect(x+70,y+5,space*1.1,showerLeng*1.1,100);
popMatrix();
fill(255, 224, 189);

pushMatrix();
rotate(radians(-1));
rect(x-25,y+showerLeng/1.5,space*1.1,showerLeng/1.1,100);
popMatrix();
rect(x-20,y+showerLeng*1.2,showerLeng*1.1,space,100);
rect(x-10,y+showerLeng*1.4,showerLeng*1.2,space,100);
noStroke();
fill(0);
fill(255, 224, 189);
circle(x-11,y+showerLeng*1.3-3,20);
circle(x+50,y+showerLeng*1.6-5,23);
popStyle();
}

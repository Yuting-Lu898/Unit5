void cup(float x,float y){
  fill(101,67,33);
rect(x,y,showerLeng/2,showerLeng/2,10);
ellipse(x+showerLeng/4,y+showerLeng/1.3,showerLeng,showerWid);
ellipse(x+showerLeng/4,y+showerLeng/1.5,showerWid*1.8,showerWid/2.5);
ellipse(x+showerLeng/4,y+showerLeng/1.6,showerWid*1.6,showerWid/3);
arc(x,y,100,10,10,10);
fill(0);
triangle(x+10,y+50,x+25,y+55,x+25,y+40);

stroke(120);
strokeWeight(1);
fill(180);


}

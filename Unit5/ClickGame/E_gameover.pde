String restar="Restar";

void gameover(){
background(0,255,255);

Button(400,250,130,40,restar);

if(score>highScore){highScore=score;score=0;miss=0;}
}

void gameoverClicks(){
  if(mouseX>=400-130/2&&mouseX<=400+130/2&&mouseY>=250-40/2&&mouseY<=250+40/2)
      mode=INTRO;
}

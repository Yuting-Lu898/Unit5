int levelSpaceSize=140;
int level_1_X=120,level_2_X=level_1_X+levelSpaceSize,level_3_X=level_2_X+levelSpaceSize,level_4_X=level_3_X+levelSpaceSize,level_5_X=level_4_X+levelSpaceSize;
int level_Y=200;int buttonWid=120,buttonLen=40;
String level_1="Level 1",level_2="Not open",level_3="Not open",level_4="Not open",level_5="Not open";
void level(){
background(255,255,0);
Button(level_1_X,level_Y,buttonWid,buttonLen,level_1);
Button(level_2_X,level_Y,buttonWid,buttonLen,level_2);
Button(level_3_X,level_Y,buttonWid,buttonLen,level_3);
Button(level_4_X,level_Y,buttonWid,buttonLen,level_4);
Button(level_5_X,level_Y,buttonWid,buttonLen,level_5);
}
void levelClicks(){
   if(mouseX>=level_1_X-buttonWid/2&&mouseX<=level_1_X+buttonWid/2&&mouseY>=level_Y-buttonLen/2&&mouseY<=level_Y+buttonLen/2){
      level=1;
      mode=GAME;
    }
}

 //else if(mouseX>=level_2_X-buttonWid/2&&mouseX<=level_2_X+buttonWid/2&&mouseY>=level_Y-buttonLen/2&&mouseY<=level_Y+buttonLen/2){
    //  level=2;
    //  mode=GAME;
    //}
    //else if(mouseX>=level_3_X-buttonWid/2&&mouseX<=level_3_X+buttonWid/2&&mouseY>=level_Y-buttonLen/2&&mouseY<=level_Y+buttonLen/2){
    //  level=3;
    //  mode=GAME;
    //}
    //else if(mouseX>=level_4_X-buttonWid/2&&mouseX<=level_4_X+buttonWid/2&&mouseY>=level_Y-buttonLen/2&&mouseY<=level_Y+buttonLen/2){
    //  level=4;
    //  mode=GAME;
    //}
    //else if(mouseX>=level_5_X-buttonWid/2&&mouseX<=level_5_X+buttonWid/2&&mouseY>=level_Y-buttonLen/2&&mouseY<=level_Y+buttonLen/2){
    //  level=5;
    //  mode=GAME;}

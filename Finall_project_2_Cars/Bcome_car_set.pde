void set1(){
  for (int i=0; i<set1_column; i++) {
      set1_Y+=5;
      for (int j=0; j<set1_row; j++) {
        color oo=black;
        if ((set1_row+set1_column)%3==0)oo=white;
        if ((set1_row+set1_column)%3==1)oo=leaf;
        if ((set1_row+set1_column)%3==1)oo=moss;

        //if (set1_alive[i][j]==true)
          comeCar(set1_X[j], set1_Y, oo, i, j);
      }
    }
    if(set1_Y>=400){set1_Y=0;set_type=1;}
}

void set2(){
  for (int i=0; i<set1_column; i++) {
      set1_Y+=5;
      for (int j=0; j<set1_row; j++) {
        color oo=black;
        if ((set1_row+set1_column)%3==0)oo=white;
        if ((set1_row+set1_column)%3==1)oo=leaf;
        if ((set1_row+set1_column)%3==1)oo=moss;
       // if (set1_alive[i][j]==true)
          comeCar(set1_X[j], set1_Y, oo, i, j);
      }
    }
    if(set2_Y>=400){set1_Y=0;set_type=2;}
}

void set3(){
  set3_Y+=5;
  comeCar(width/2,set3_Y,black,0,0);

  comeCar(width/2-100,set3_Y,leaf,0,1);

  comeCar(width/2+100,set3_Y,moss,0,2);
  
     if(set2_Y>=400){set1_Y=0;set_type=0;}
}

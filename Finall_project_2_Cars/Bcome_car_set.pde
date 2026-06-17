void set1() {
  for (int i=0; i<set1_column; i++) {
    set1_Y+=3;
    for (int j=0; j<set1_row; j++) {
      color oo=black;
      if ((set1_row+set1_column)%3==0)oo=white;
      else if ((set1_row+set1_column)%3==1)oo=leaf;
      else if ((set1_row+set1_column)%3==1)oo=moss;
      if (set1_alive[i][j]==true)
        comeCar1(set1_X[j], set1_Y, oo, i, j);
    }
  }

  if (set1_Y>=520) {
    set1_Y=0;
    set_type=1;
    for (int i=0; i<set1_column; i++)
      for (int j=0; j<set1_row; j++)set1_alive[i][j]=true;
  }
}

void set2() {
  for (int i=0; i<set2_row; i++) {
    set2_Y+=3;
    color oo=black;
    if ((i+set3_column)%3==0)oo=white;
    else if ((i+set3_column)%3==1)oo=leaf;
    else if ((i+set3_column)%3==1)oo=moss;
    if (set2_alive[i]==true)
      comeCar2(set2_X[i], set2_Y, oo, i);
  }
 
  if (set2_Y>=520) {
    set2_Y=0;
    set_type=2;
    for (int i=0; i<set1_column; i++)
      for (int j=0; j<set1_row; j++)set1_alive[i][j]=true;
  }
}

void set3() {
  set3_Y+=3;
  for (int i=0; i<set3_row; i++) {
    color oo=black;
    if ((i+set1_column)%3==0)oo=white;
    else if ((i+set1_column)%3==1)oo=leaf;
    else if ((i+set1_column)%3==2)oo=moss;
    if (set3_alive[i]==true)
      comeCar3(set3_X[i], set3_Y, oo, i);
  }
 
  if (set3_Y>=520) {
    set3_Y=0;
    set_type=0;
    for (int i=0; i<set3_column; i++)
      set3_alive[i]=true;
  }
}

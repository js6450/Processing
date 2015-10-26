float rectSize;
float gapSize;
int numRect = 17;

void setup(){
  size(720, 720);
  background(0);
  
  rectSize = width / 26.0;
  gapSize = rectSize / 2.0;
  
  rectMode(CORNER);
  noFill();
  stroke(255);
    
  drawRect();
  
  save("triangulation.jpg");
}

void draw(){
  
}

void drawRect(){
   float x_pos = gapSize;
   float y_pos = gapSize;
   for(int i = 0; i < numRect; i++){
     for(int j = 0; j < numRect; j++){
       rect(x_pos, y_pos, rectSize, rectSize); 
       whichLines(i, j, x_pos, y_pos);
       x_pos += (rectSize + gapSize);
     }
     x_pos = gapSize;
     y_pos += (rectSize + gapSize);
   }
}

void whichLines(int i, int j, float x_pos, float y_pos){
  int numLines = 0;
  
  if(i == 0 | j == 0| i == 16 | j == 16){
    numLines = 8; 
  }
  
  else if(i == 1 | j == 1 | i == 15 | j == 15){
    numLines = 7; 
  }
  
  else if(i == 2 | j == 2 | i == 14 | j == 14){
    numLines = 6; 
  }
  
  else if(i == 3 | j == 3 | i == 13 | j == 13){
    numLines = 5;
  }
  
  else if(i == 4 | j == 4 | i == 12 | j == 12){
    numLines = 4;
  }
  
  else if(i == 5 | j == 5 | i == 11 | j == 11){
    numLines = 3;
  }
  
  else if(i == 6 | j == 6 | i == 10 | j == 10){
    numLines = 2;
  }
  
  else if(i == 7 | j == 7 | i == 9 | j == 9){
    numLines = 1;
  }
  
  else if(i == 8 && j == 8){
    numLines = 0;
  }
  
  drawLines(numLines, x_pos, y_pos);
    
}

void drawLines(int numLines, float x_pos, float y_pos){
  
  if(numLines == 0){
    return;
  }  
  
  else if(numLines == 8){
    for(int i = 1; i < 9; i++){
      drawLine(i, x_pos, y_pos);
    }
  }
  
  else if(numLines == 7){ 
    int randNum = int(random(1, 9));
    for(int i = 1; i < 9; i++){
     if(i != randNum){
       drawLine(i, x_pos, y_pos);
     }
    }
  }
  
  else if(numLines == 6){
    int randNum1 = int(random(1, 9));
    int randNum2 = int(random(1, 9));
    while(randNum1 == randNum2){
      randNum2 = int(random(1, 9));
    }
        
    for(int i = 1; i < 9; i++){
      if( i != randNum1 && i != randNum2){
        drawLine(i, x_pos, y_pos);
      }
    } 
  }
  
   else if(numLines == 5){
   int randNum1 = int(random(1, 9));
   int randNum2 = int(random(1, 9));
   while(randNum1 == randNum2){
     randNum2 = int(random(1, 9));
   }
   int randNum3 = int(random(1, 9));
   while(randNum3 == randNum1 || randNum3 == randNum2){
     randNum3 = int(random(1, 9));
   }
    
   for(int i = 1; i < 9; i++){
     if( i != randNum1 && i != randNum2 && i != randNum3){
       drawLine(i, x_pos, y_pos);
     }
   }
  }
  
   else if(numLines == 4){
   int randNum1 = int(random(1, 9));
   int randNum2 = int(random(1, 9));
   while(randNum1 == randNum2){
     randNum2 = int(random(1, 9));
   }
   int randNum3 = int(random(1, 9));
   while(randNum3 == randNum1 || randNum3 == randNum2){
     randNum3 = int(random(1, 9));
   }
   int randNum4 = int(random(1, 9));
   while(randNum4 == randNum1 || randNum4 == randNum2 || randNum4 == randNum3){
     randNum4 = int(random(1, 9));
   }
    
   for(int i = 1; i < 9; i++){
     if( i != randNum1 && i != randNum2 && i != randNum3 && i != randNum4){
       drawLine(i, x_pos, y_pos);
     }
   }
  }

   else if(numLines == 3){
   int randNum1 = int(random(1, 9));
   int randNum2 = int(random(1, 9));
   while(randNum1 == randNum2){
     randNum2 = int(random(1, 9));
   }
   int randNum3 = int(random(1, 9));
   while(randNum3 == randNum1 || randNum3 == randNum2){
     randNum3 = int(random(1, 9));
   }

   for(int i = 1; i < 9; i++){
     if( i == randNum1 || i == randNum2 || i == randNum3){
       drawLine(i, x_pos, y_pos);
     }
   }
  }

   else if(numLines == 2){
   int randNum1 = int(random(1, 9));
   int randNum2 = int(random(1, 9));
   while(randNum1 == randNum2){
     randNum2 = int(random(1, 9));
   }
    
   for(int i = 1; i < 9; i++){
     if( i == randNum1 || i == randNum2){
       drawLine(i, x_pos, y_pos);
     }
   }
  }
  
  else if(numLines == 1){
  int randNum1 = int(random(1, 9));
   
  drawLine(randNum1, x_pos, y_pos);
   
  }

}

void drawLine(int whichLine, float x_pos, float y_pos){
  if(whichLine == 1){
    //vertical line
    line(x_pos + gapSize, y_pos, x_pos + gapSize, y_pos + rectSize);
  }
  
  else if(whichLine == 2){
    //horizontal line
    line(x_pos, y_pos + gapSize, x_pos + rectSize, y_pos + gapSize);
  }
  
  else if(whichLine == 3){
    //left diagonal
    line(x_pos, y_pos, x_pos + rectSize, y_pos + rectSize);
  }
  
  else if(whichLine == 4){
    //right diagonal
    line(x_pos + rectSize, y_pos, x_pos, y_pos + rectSize);
  }
  
  else if(whichLine == 5){
    //small diagonal 1
    line(x_pos + gapSize, y_pos, x_pos, y_pos + gapSize);
  }
  
  else if(whichLine == 6){
     line(x_pos, y_pos + gapSize, x_pos + gapSize, y_pos + rectSize);
  }
  
  else if(whichLine == 7){
    line(x_pos + gapSize, y_pos + rectSize, x_pos + rectSize, y_pos + gapSize);
  }
  
  else if(whichLine == 8){
    line(x_pos + rectSize, y_pos + gapSize, x_pos + gapSize, y_pos);
  }
}
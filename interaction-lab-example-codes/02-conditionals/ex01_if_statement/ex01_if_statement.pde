//uses the if statement 
//to check the y position of the rectangle
//and resets the y position to 0 (top of the sketch)
//when the rectangle reaches the bottom

int y = 0;

void setup(){
  size(500, 500);
  rectMode(CENTER);
}

void draw(){
  background(0);
  rect(width / 2, y, 50, 50);
  
  //because rectMode is center,
  //we need to account for the height of the rectangle
  //so allow the rectangle to go down 25 pixels more for
  //before y position is reset to 0 and will fall down the screen again.
  //y >= height + 25 returns true,
  //if y is bigger or equal to height + 25 (in this case 525)
  //and only if the statement returns true,
  //set y to 0.
  if(y >= height + 25){
   y = 0; 
  }
  
  //increment y by 1.
  y = y + 1;
}
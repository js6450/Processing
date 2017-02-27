//change fill of rect color
//depending on mouseX position

void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  //if mouseX is less than width / 4
  //fill is red
  if (mouseX < width / 4) {
    fill(255, 0, 0);
  }
  //else if mouseX is greater or equal to width / 4
  //AND if it is less than width / 2
  //fill is green
  else if (mouseX >= width / 4 && mouseX < width / 2) {
    fill(0, 255, 0);
  } 
  //else if mouseX is greater or equal to width / 2
  //AND if it is less than width * 3 / 4
  //fill is blue
  else if (mouseX >=width / 2 && mouseX < width * 3 / 4) {
    fill(0, 0, 255);
  } 
  //else fill is purple
  else {
    fill(255, 0, 255);
  }
  rect(0, 0, width, height);

  //to show the mouseX position as text
  //on the top left corner of sketch
  fill(0);
  textSize(32);
  text("mouseX position: " + mouseX, 10, 40);
}
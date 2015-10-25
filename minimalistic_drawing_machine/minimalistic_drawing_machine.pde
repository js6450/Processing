PGraphics drawbox;

int erase = 0;
int rectangle = 0;
int circle = 0;
int tri = 0;
int line = 0;

void setup(){
  size(1280, 720);
  drawbox = createGraphics(1220, 720);
  
  setIcons();
  
}

void draw(){
  
  fill(0, 15);
  rect(0, 0, width-60, height);
  fill(255);
  noStroke();
  if(rectangle == 1){
    rect(mouseX, mouseY, 50, 50); 
  }
  if(circle == 1){
    ellipseMode(RADIUS);
    ellipse(mouseX, mouseY, 25, 25);
  }
  if(tri == 1){
    triangle(mouseX, mouseY-25, mouseX-25, mouseY+25, mouseX+25, mouseY+25); 
  }
  if(line == 1){
    line(mouseX-10, mouseY-10, mouseX+10, mouseY+10);
  }
  
  setIcons();

  drawbox.beginDraw();
  drawbox.noFill();
  drawbox.stroke(255);
  if(rectangle == 1){ 
    drawRectangle();
  }
  else if(circle == 1){
    drawCircle();
  }
  else if(erase == 1){
    drawbox.clear();
  }
  else if(tri == 1){
    drawTri(); 
  }
  else if(line == 1){
    drawLine(); 
  }
  
  
  drawbox.endDraw();
  
  image(drawbox, 0, 0);
}

void setIcons(){
  //menu
  fill(100);
  noStroke();
  rect(width-60, 0, 60, 720);
  
  //clear icon
  fill(255);
  stroke(0);
  rect(width-50, 10, 40, 40, 5);

  //circle icon
  fill(255);
  rect(width-50, 60, 40, 40, 5);
  fill(0);
  ellipseMode(CORNER);
  ellipse(width-40, 70, 20, 20);
  
  //rectangle icon
  fill(255);
  rect(width-50, 110, 40, 40, 5);
  fill(0);
  rect(width-40, 120, 20, 20);
  
  //triangle icon
  fill(255);
  rect(width-50, 160, 40, 40, 5);
  fill(0);
  triangle(width-30, 170, width-40, 190, width-20, 190);
  
  //line icon
  fill(255);
  rect(width-50, 210, 40, 40, 5);
  strokeWeight(3);
  line(width-45, 215, width-15, 245);
}

void mouseClicked(){
  //when clicked on erase icon
  if(mouseX > width-50 && mouseX < width-10 && mouseY > 10 && mouseY < 50){
    erase = 1;
    rectangle = 0;
    circle = 0;
    tri = 0;
    line = 0;
  }
  
  //when clicked on circle icon
  else if(mouseX > width-50 && mouseX < width-10 && mouseY > 60 && mouseY < 100){
    circle = 1;
    rectangle = 0;
    erase = 0;
    tri = 0;
    line = 0;
  }

  //when clicked on rectangle icon
  else if(mouseX > width-50 && mouseX < width-10 && mouseY > 110 && mouseY < 150){
    rectangle = 1;
    circle = 0;
    erase = 0;
    tri = 0;
    line = 0;
  }
 
  //when clicked on triangle icon
  else if(mouseX > width-50 && mouseX < width-10 && mouseY > 160 && mouseY < 200){
    circle = 0;
    rectangle = 0;
    erase = 0;
    tri = 1;
    line = 0;
  }
  
  else if(mouseX > width-50 && mouseX < width-10 && mouseY > 210 && mouseY < 250){
    circle = 0;
    rectangle = 0;
    erase = 0;
    tri = 0;
    line = 1;
  }
}

void drawRectangle(){
  drawbox.rect(mouseX, mouseY, 50, 50);
}

void drawCircle(){
  ellipseMode(RADIUS);
  drawbox.ellipse(mouseX, mouseY, 50, 50);
}

void drawTri(){
  drawbox.triangle(mouseX, mouseY-25, mouseX-25, mouseY+25, mouseX+25, mouseY+25); 
}

void drawLine(){
  drawbox.line(mouseX-10, mouseY-10, mouseX+10, mouseY+10);
 
}
  
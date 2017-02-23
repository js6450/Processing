void setup() {
  //create canvas
  size(640, 480);
  //set background
  background(252, 212, 30);
  //set rectMode and ellipseMode as CENTER
  //default mode is CORNER for both shapes
  //this needs to be done to centralize the rotation of the shapes
  rectMode(CENTER);
  ellipseMode(CENTER);
}

//anything in the draw function
//runs in a loop
void draw() {
  //keep erasing previous drawings
  //by paining the canvas yellow every frame
  background(252, 212, 30);

  //push below in the matrix
  //which will group all shapes and apply same transformations
  pushMatrix();
  //this is done so that rotation will happen in the center
  //as rotation without this translate 
  //will rotate using top left corner of the sketch as center point
  translate(width / 2, height / 2);
  //rotate uses radians rather than degrees
  //radians(d) will convert d to radians
  //frameCount * 3 to accelerate rotation
  rotate(radians(frameCount*3));
  //calculate scale based on frameCount
  //scale ranges from 0 to 1.0 and is a float value
  float scale = map(frameCount % 120, 0, 120, 0, 1.0);
  scale(scale);

  //black parts of both eyes
  noStroke();
  fill(0);
  ellipse(-125, - 75, 150, 150);
  ellipse(125, - 75, 150, 150);

  //white part of eye - right
  fill(255);
  //compare this part to the ex02_simple_animation sketch
  //all of this shit can be done in one line
  //by pushing the whole shape in the matrix
  pushMatrix();
  translate(-width / 2, - height /2);
  beginShape();
  curveVertex(405, 230);
  curveVertex(405, 230);
  curveVertex(443, 241);
  curveVertex(476, 234);
  curveVertex(501, 215);
  curveVertex(516, 187);
  curveVertex(519, 158);
  curveVertex(514, 138);
  curveVertex(492, 124);
  curveVertex(464, 123);
  curveVertex(445, 130);
  curveVertex(427, 144);
  curveVertex(414, 163);
  curveVertex(406, 188);
  curveVertex(405, 211);
  curveVertex(405, 211);
  endShape(CLOSE);
  popMatrix();

  //white part of eye - left
  arc(-125, -75, 150, 150, - PI / 8, PI / 2 + PI / 8, OPEN);
  arc(-100, -50, 145, 133, PI / 2 + PI / 4, PI * 1.72, OPEN);

  //outline of eyes
  noFill();
  stroke(0);
  strokeWeight(3);
  ellipse(-125, -75, 150, 150);
  ellipse(125, -75, 150, 150);

  //making eyes blink

  //angle variable changes based on the frameCount of the sketch
  //frameCount % 120 divides frameCount by 120 and returns its remainder
  //map matches the returned value of frameCount % 120 that ranges from 0 and 120
  //and maps the values to ranges from 0 and PI / 2
  float angle = map(frameCount % 120, 0, 160, 0, PI / 2);
  //bottom left eye
  strokeWeight(4);
  stroke(0);  
  fill(252, 212, 30);
  arc(-125, -75, 147, 147, 0 + angle, PI - angle, CHORD);
  //top left eye
  arc(-125, -75, 147, 147, PI + angle, 2*PI - angle, CHORD);
  ////bottom rigth eye
  arc(125, -75, 147, 147, 0 + angle, PI - angle, CHORD);
  ////top rigth eye
  arc(125, -75, 147, 147, PI + angle, 2*PI - angle, CHORD);

  //moustache(?)
  noStroke();
  fill(252, 212, 30);
  arc(0, 0, 220, 220, PI, 2 * PI, OPEN);
  noFill();
  strokeWeight(3);
  stroke(0);
  arc(0, 0, 70, 70, PI, 2 * PI, OPEN);
  arc(0, 0, 220, 220, PI, 2 * PI, OPEN);
  line(70/2, 0, 70/2, 80);
  line(-70/2, 0, -70/2, 80);
  line(220/2, 0, 220/2, 80);
  line(-220/2, 0, -220/2, 80);
  arc(-72.5, 80, 75, 75, 0, PI, OPEN);
  arc(72.5, 80, 75, 75, 0, PI, OPEN);

  //nose
  fill(0);
  ellipse(0, -40, 80, 50);

  //mouth
  strokeWeight(3);
  fill(90, 19, 7);
  ellipse(0, 70, 40, 20);
  
  //teeth
  fill(255);
  strokeWeight(1);
  rect(-7, 64, 10, 6, 8);
  rect(7, 64, 10, 6, 8);
  
  //mouth outline
  noFill();
  ellipse(0, 70, 40, 20);

  popMatrix();
}
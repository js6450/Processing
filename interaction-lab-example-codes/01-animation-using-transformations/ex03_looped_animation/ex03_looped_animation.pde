void setup() {
  //create canvas
  size(640, 480);
  //set background
  background(252, 212, 30);
}

//anything in the draw function
//runs in a loop
void draw() {
  //keep erasing previous drawings
  //by paining the canvas yellow every frame
  background(252, 212, 30);

  //black parts of both eyes
  noStroke();
  fill(0);
  ellipse(width/2 - 125, height / 2 - 75, 150, 150);
  ellipse(width/2 + 125, height / 2 - 75, 150, 150);

  //white part of eye - right
  fill(255);
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

  //white part of eye - left
  arc(width/2 - 125, height / 2 - 75, 150, 150, - PI / 8, PI / 2 + PI / 8, OPEN );
  arc(width/2 - 100, height / 2 - 50, 145, 133, PI / 2 + PI / 4, PI * 1.72, OPEN );

  //outline of eyes
  noFill();
  stroke(0);
  strokeWeight(3);
  ellipse(width/2 - 125, height / 2 - 75, 150, 150);
  ellipse(width/2 + 125, height / 2 - 75, 150, 150);

  //making eyes blink

  //angle variable changes based on the frameCount of the sketch
  //frameCount % 120 divides frameCount by 120 and returns its remainder
  //map matches the returned value of frameCount % 120 that ranges from 0 and 120
  //and maps the values to ranges from 0 and PI / 2
  float angle = map(frameCount % 120, 0, 120, 0, PI / 2);
  //bottom left eye
  stroke(0);  
  strokeWeight(4);
  fill(252, 212, 30);
  arc(width/2 - 125, height / 2 - 75, 147, 147, 0 + angle, PI - angle, CHORD);
  //top left eye
  arc(width/2 - 125, height / 2 - 75, 147, 147, PI + angle, 2*PI - angle, CHORD);
  ////bottom rigth eye
  arc(width/2 + 125, height / 2 - 75, 147, 147, 0 + angle, PI - angle, CHORD);
  ////top rigth eye
  arc(width/2 + 125, height / 2 - 75, 147, 147, PI + angle, 2*PI - angle, CHORD);

  //moustache(?)
  noStroke();
  fill(252, 212, 30);
  arc(width / 2, height / 2, 220, 220, PI, 2 * PI, OPEN);
  noFill();
  strokeWeight(3);
  stroke(0);
  arc(width / 2, height / 2, 70, 70, PI, 2 * PI, OPEN);
  arc(width / 2, height / 2, 220, 220, PI, 2 * PI, OPEN);
  line(width / 2 + 70/2, height / 2, width / 2 + 70/2, height / 2 + 80);
  line(width / 2 - 70/2, height / 2, width / 2 - 70/2, height / 2 + 80);
  line(width / 2 + 220/2, height / 2, width / 2 + 220/2, height / 2 + 80);
  line(width / 2 - 220/2, height / 2, width / 2 - 220/2, height / 2 + 80);
  arc(width / 2 - 72.5, height / 2 +  80, 75, 75, 0, PI, OPEN);
  arc(width / 2 + 72.5, height / 2 +  80, 75, 75, 0, PI, OPEN);

  //nose
  fill(0);
  ellipse(width / 2, height / 2 - 40, 80, 50);

  //mouth
  strokeWeight(3);
  fill(90, 19, 7);
  ellipse(width / 2, height / 2 + 70, 40, 20);
  
  //teeth
  fill(255);
  rectMode(CENTER);
  strokeWeight(1);
  rect(width / 2 - 7, height / 2 + 64, 10, 6, 8);
  rect(width / 2 + 7, height / 2 + 64, 10, 6, 8);
  
  //mouth outline
  noFill();
  ellipse(width / 2, height / 2 + 70, 40, 20);
}
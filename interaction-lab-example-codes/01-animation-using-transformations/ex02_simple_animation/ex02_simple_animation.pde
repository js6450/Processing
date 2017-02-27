//to use to increase x
//and to animate the drawing to move towards right
int x = 0;

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
  
  //here, compared to previous example,
  //as x coordinates of all shapes need to be graduatly increased
  //to create the animation effect of move towards right
  //all width / 2 values are replaced by x
  
  //black parts for both eyes
  noStroke();
  fill(0);
  ellipse(x - 125, height / 2 - 75, 150, 150);
  ellipse(x + 125, height / 2 - 75, 150, 150);

  //white part of eye - right
  //for this curve shape, we need to also shift by -width/2
  fill(255);
  beginShape();
  curveVertex(405 + x - width / 2, 230);
  curveVertex(405 + x - width / 2, 230);
  curveVertex(443 + x - width / 2, 241);
  curveVertex(476 + x - width / 2, 234);
  curveVertex(501 + x - width / 2, 215);
  curveVertex(516 + x - width / 2, 187);
  curveVertex(519 + x - width / 2, 158);
  curveVertex(514 + x - width / 2, 138);
  curveVertex(492 + x - width / 2, 124);
  curveVertex(464 + x - width / 2, 123);
  curveVertex(445 + x - width / 2, 130);
  curveVertex(427 + x - width / 2, 144);
  curveVertex(414 + x - width / 2, 163);
  curveVertex(406 + x - width / 2, 188);
  curveVertex(405 + x - width / 2, 211);
  curveVertex(405 + x - width / 2, 211);
  endShape(CLOSE);

  //white part of eye - left
  arc(x - 125, height / 2 - 75, 150, 150, - PI / 8, PI / 2 + PI / 8, OPEN );
  arc(x - 100, height / 2 - 50, 145, 133, PI / 2 + PI / 4, PI * 1.72, OPEN );

  //outline of eyes
  noFill();
  stroke(0);
  strokeWeight(3);
  ellipse(x - 125, height / 2 - 75, 150, 150);
  ellipse(x + 125, height / 2 - 75, 150, 150);
  
  //moustache(?)
  noStroke();
  fill(252, 212, 30);
  arc(x, height / 2, 220, 220, PI, 2 * PI, OPEN);
  noFill();
  strokeWeight(3);
  stroke(0);
  arc(x, height / 2, 70, 70, PI, 2 * PI, OPEN);
  arc(x, height / 2, 220, 220, PI, 2 * PI, OPEN);
  line(x + 70/2, height / 2, x + 70/2, height / 2 + 80);
  line(x - 70/2, height / 2, x - 70/2, height / 2 + 80);
  line(x + 220/2, height / 2, x + 220/2, height / 2 + 80);
  line(x - 220/2, height / 2, x - 220/2, height / 2 + 80);
  arc(x - 72.5, height / 2 +  80, 75, 75, 0, PI, OPEN);
  arc(x + 72.5, height / 2 +  80, 75, 75, 0, PI, OPEN);
  
  //nose
  fill(0);
  ellipse(x, height / 2 - 40, 80, 50);

  //mouth
  strokeWeight(3);
  fill(90, 19, 7);
  ellipse(x, height / 2 + 70, 40, 20);
  
  //teeth
  fill(255);
  rectMode(CENTER);
  strokeWeight(1);
  rect(x - 7, height / 2 + 64, 10, 6, 8);
  rect(x + 7, height / 2 + 64, 10, 6, 8);
  
  //mouth outline
  noFill();
  ellipse(x, height / 2 + 70, 40, 20);
  
  //increase x by 1
  //short for x = x + 1;
  x++;
}
Ball[] myballs = new Ball[100];


void setup(){
  
  size(800, 600);
  
  noStroke();
  
  for(int i = 0; i < myballs.length; i++){
    myballs[i] = new Ball(int(random(0, width)), int(random(0, height)), random(5., 10.0), random(1., 5.5), int(random(10, 200))); 
  }
  
}

void draw(){
  background(0);
  
  for(int i = 0; i < myballs.length; i++){
    myballs[i].render();
    myballs[i].update();
    myballs[i].bounds();
    myballs[i].setColor(random(127, 255), random(127, 255), random(127,255));
  }
}
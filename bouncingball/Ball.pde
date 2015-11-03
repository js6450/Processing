class Ball{
 
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diam;
  
  Ball(int x, int y, float x_speed, float y_speed, int d){
    xPos = x;
    yPos = y;
    xSpeed = x_speed;
    ySpeed = y_speed;
    diam = d;
  }
  
  void setColor(float R, float G, float B){
    fill(R, G, B); 
  }
  
  void render(){
    ellipse(xPos, yPos, diam, diam);
  }
  
  void update(){
    xPos += xSpeed;
    yPos += ySpeed;
  }
  
  void bounds(){
    if(xPos >= width || xPos <= 0){
      xSpeed = xSpeed * -1;
    }
    
    if(yPos >= height || yPos <= 0){
      ySpeed = ySpeed * -1;
    }
  }

}
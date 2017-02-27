//draw lines with 10 pixels apart
//while i is less than width / 2

int i = 0; 

void setup() {
  size(500, 500);

  //functions inside while loop will run
  //until i is no longer less than width / 2
  while (i < width / 2) { 
    line(0, i, width, i); 
    //increase i by 10 at the end of every while loop
    i = i + 10;
  }
  
}
//using user-defined functions
//to calculate additions and subtractions
//then draws a rectangle

int number_1;
int number_2;

void setup() {
  size(500, 500);
  rectMode(CENTER);
}

void draw() {
  //change these numbers to see
  //differences in rectangle sizes
  //but make sure number_1 is bigger than number_2
  number_1 = 100;
  number_2 = 90;

  //call addThistoThat and give number_1 and number_2 as arguments
  //save the return value to add
  int add = addThistoThat(number_1, number_2);
  //call minusThistoThat and give number_1 and number_2 as arguments
  //save the return value to minus
  int minus = minusThistoThat(number_1, number_2);

  //call drawThis and give add and minus
  //to draw a rectangle
  drawThis(add, minus);
}

//adds the two arguments
//and returns the resulting value
//"int" at the beginning of function means
//it will return an integer value
int addThistoThat(int a, int b) {
  return a + b;
}

//subtracts from one value to the other
//and returns the resulting value
//"int" at the beginning of function means
//it will return an integer value
int minusThistoThat(int a, int b) {
  return a - b;
}

//draws a rectangle
//using the two arguments as width and height value
//"void" at the beginning of the function means
//nothing will be returned
void drawThis(int w, int h) {
  rect(width / 2, height / 2, w, h);
}
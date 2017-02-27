//draws 10 rectangles diagnonally down
//using a for loop

void setup() {
  size(500, 500);

  background(0);

  //start with i = 0
  //and add 1 to i after each loop
  //until i is less than 10 (until i is 9)
  //when i = 0, position of rect is (0 * 50, 0 * 50)
  //when i = 1, position of rect is (1 * 50, 1 * 50)
  //when i = 2, position of rect is (2 * 50, 2 * 50) and so on
  for (int i = 0; i < 10; i = i + 1) {
    rect(i * 50, i * 50, 50, 50);
  }
}
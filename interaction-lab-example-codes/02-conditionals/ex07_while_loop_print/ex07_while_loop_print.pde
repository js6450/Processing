//print 0 to 9 using while loop

int i = 0; 

void setup() {

  //functions inside while loop will run
  //until i is no longer less than 10
  while (i < 10) { 
    println(i); 
    //increase i by 1 at the end of every while loop
    //without this line, Processing will crash
    //because it will infinitely print 0 (will be stuck in infinite loop)
    //and eventually run out of memory
    i = i + 1;
  }
}
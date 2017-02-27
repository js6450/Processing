//Depending on what letter it is,
//what is being printed changes
char letter = 'A';

switch(letter) {
  //if letter is A, print Aven
case 'A': 
  println("Aven");
  break;
//if letter is J, print Jiwon
case 'J': 
  println("Jiwon");
  break;
//if letter is L, print Luis
case 'L': 
  println("Luis");
  break;
//if letter is M, print Marcela
case 'M': 
  println("Marcela");
  break;
//if letter does not fall into any of the above cases
//print IMA Fellows!
//this is the default case, which is similar to else in if-else statement
default:
  println("IMA Fellows!");
  break;
}
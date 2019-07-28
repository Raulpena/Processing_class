int[] numbers; // array to store the numbers
 
void setup() {
  size(500, 500);
  // load the lines into an array of strings
  String[] lines = loadStrings("data.txt");
  // set the length of the numbers array to the number of lines
  numbers = new int[lines.length];
  // go over each line (arrays start at zero);
  for (int i=0; i<lines.length; i++) {
// split each lines into two strings (remove the space and the comma)
    String[] tokens = splitTokens(lines[i],",");
    // take the second string and put it in the int array
    numbers[i] = int(tokens[1]);
  }
}
void draw() {
  background(50);
  fill(226, 229, 100);
  // calculate the width of one bar depending on the length of the array
  float w = (float) width/numbers.length;
  // go over all the numbers
  for (int i=0; i<numbers.length; i++) {
    // get the h and multiply by 4 to increase the visibility
    float h = numbers[i] * 4;
    // draw a rect
    rect(i*w, height-h, w, h);
  }
}

// (a, b) is the center of all circles
// x is the diameter of the circles
// i is the constant distance between circles
// o is the bigest diameter for every loop
// io is the incrementation of o
float a, b, x, y, i, o, io;
// Color numbers to put in fill function
int red, green, blue, transparency;


void setup() {
  size(400, 400);
  // Set center in the center of the window
  a= width/2;
  b= height/2;
  // Initiate i
  i= 10;
  //initiate io
  io=5;
  // initiate o
  o= io;
}

void draw() {
  background(255);
  
  for (x=o; 0 < x; x= x- i) {
    noStroke();
    // Make random colors for the circles
    red= (int) random(255);
    green= (int) random(255);
    blue= (int) random(255);
    transparency= (int) random(255);
    fill(red, green, blue, transparency);
    ellipse ( a, b, x, x); 
  }
  delay(15);
  
  // Make the movement go back when it touches the edge or is too small
  if ((0< io && width< o) || (0 > io && o < abs(io))) { 
    io*= -1;
  }
  
  o= o+ io;
}

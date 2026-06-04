import processing.javafx.*;

Star[] myStars;
int numStars;
void setup() {
  size(800, 800, FX2D);
  noStroke();
  numStars=200;
  myStars = new Star[numStars]; //constructor
  for (int i=0; i<numStars; i++){
  myStars[i] = new Star();
  }
}

void draw() {
  
 for (int i=0; i<numStars; i++){
  myStars[i].show();
  myStars[i].act();
  }
  
  fill(0,10);
  rect(0,0,width,height);
}

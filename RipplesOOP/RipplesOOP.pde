import processing.javafx.*;

Ripple[] myRipples;
int numRipples;
void setup() {
  size(800, 800, FX2D);
  colorMode(HSB);
  noFill();
  numRipples=50;
  myRipples = new Ripple[numRipples]; //constructor
  for (int i=0; i<numRipples; i++) {
    myRipples[i] = new Ripple();
  }
}

void draw() {
  background(0);

  for (int i=0; i<numRipples; i++){
    myRipples[i].show();
    myRipples[i].act();
  }
}

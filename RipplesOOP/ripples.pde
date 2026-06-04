class Ripple {

  //instance variables or fields
  float x, y, size, alpha;
  int h,s,b;

  //constructor: special function that defines how
  //             a object of this class is born.
  //             Defines inifial values for its fields.
  Ripple() {
    x = random(width);
    y = random(height);
    size=random(200);
     h = int(random(140, 170)); 
    s=255;
    b=255;
  }

  //behaviour functions: these define what a ripple does

  void show() {
    alpha = map(size, 0, 200, 255, 0);
    stroke(h,s,b, alpha);
    ellipse(x, y, size, size/2);
  }

  void act() {

    size+=3;
    if (size>=200) {
      //x = random(width);
      //y = random(height);
      x=mouseX;
      y=mouseY;
      size = 0;
    }
  }
}

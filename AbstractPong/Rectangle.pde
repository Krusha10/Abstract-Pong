class Rectangle extends Shape{
  //Global variables
  color colour, nightModeColour;
  //
  //Constructor
  Rectangle(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(random(0, 255), random(255), random(255));
    nightModeColour = colour = color(random(0, 255), random(255), 0);
  }//End Constructor
  //
  //Methods
  void draw() {
    fill(colour);
    rect(x, y , w, h);
    fill(nightModeColour);
  }//End draw()
  //
}//End Rectangle

class Point extends Shape {
  //Global variabls
  color colour = 255;
  //
  //Constructor
  Point (float x, float y) {
    super(x, y);
  }
  //
  void draw() {
    stroke(255);
    point(x, y);
    stroke(0);
  }//End draw
  //
  //Common Methods 
  void fillCodeColour () {
    fill (fillColour(colour));
  }//End fillCodeColour 
  void fillResetColor() {
    fill (fillColour(colour));
  }//End fillResetColor
  color fillColour (color colour) {
    return color(0, 0, 0);
  }//End fillColour
  //
}//End Point

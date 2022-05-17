private class Point extends Shape {
  //Global variabls
  private color colour = 255;
  //
  //Constructor
  private Point (float x, float y) {
    super(x, y);
  }
  //
  public void draw() {
    stroke(255);
    point(x, y);
    stroke(0);
  }//End draw
  //
  //Common Methods 
  final public void fillCodeColour () {
    fill (fillColour(colour));
  }//End fillCodeColour 
  final public void fillResetColor() {
    fill (fillColour(colour));
  }//End fillResetColor
  public color fillColour (color colour) {
    return color(0, 0, 0);
  }//End fillColour
  //
}//End Point

private class Ellipse extends Circle {
  //Global variabls
  private float yDiameter;
  //
  //Constructor
  private Ellipse (float x, float y, float diameter, float yDiameter) {
    super (x, y, diameter);
    this.yDiameter = yDiameter;
  }
  //
  final public void draw() {
    fillCodeColour(); //Non-reset colour
    ellipse(x, y, diameter, yDiameter);
    fillResetColor();   
  }//End draw
  //
  //Common Methods 
  final public color fillColour (color colour) {
    return color(0, 0, colour);
  }//End fillColour
  //
} //End Ellipse

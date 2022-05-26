final private class LeftEye extends Circle {
  //Global variables 
  //
  //Constructor
  private LeftEye (float x, float y, float diameter) {
    super (x, y, diameter);
  }//End Constrctor 
  //
  public void draw() {
    fillCodeColour();
    circle(x, y, diameter);
    fillResetColor();
  }
  //
  //Common Methods
  public color fillColour (color colour) {
    //return color(random(0, 255), random(0, 255), random(0));
    return color (0);
  }
}//End LeftEye

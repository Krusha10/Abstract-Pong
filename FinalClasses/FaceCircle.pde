final private class FaceCircle extends Circle {
  //Global variables 
  //
  //Constructor
  private FaceCircle (float x, float y, float diameter ) {
    super (x, y, diameter);
  }//End Constrctor 
  //
  public void draw() {
    fillCodeColour();
    circle(x, y, diameter);
    fillResetColor();
  }
  //
  //Common Method
  public color fillColour (color colour) {
    //return color(random(0, 255), random(0, 255), random(0));
    return color (#F5FC78);
  }
}//End FaceCircle

final private class Ear extends Circle {
  //Global variables 
  //
  //Constructor
  private Ear (float x, float y, float diameter ) {
    super (x, y, diameter);
  }//End Constrctor 
  //
  //
  //Common Methods 
  public void draw() {
    fillCodeColour();
    circle(x, y, diameter);
    fillResetColor();
  }
  //
  public color fillColour (color colour) {
    //return color(random(0, 255), random(0, 255), random(0));
    return color (0);
  }
}//End Ear

final private class Tongue extends Arc {
  //Global variables 
  //
  //Constructor
  private Tongue (float x, float y, float a, float b, float c, float d, int e) {
    super (x, y, a, b, c, d, e);
  }//End Constrctor 
  //
  public void draw() {
    fill(#FF4646);
    stroke(0);
    arc(x, y, a, b, c, d, e);
  }
  //
  //Common Methods 
  /*
  public color fillColour (color colour) {
    //return color(random(0, 255), random(0, 255), random(0));
    return color (#FF4646);
  }
  */
}//End Tongue

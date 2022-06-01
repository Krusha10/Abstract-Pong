final private class Mouth extends Line {
  //Global variables 
  //
  //Constructor
  private Mouth (float x, float y, float xPt, float yPt ) {
    super (x, y, xPt, yPt);
  }//End Constrctor 
  //
  public void draw() {
    fillCodeColour();
    line(x, y, xPt, yPt);
    fillResetColor();
  }
  //
  //Common Methods 
}//End Mouth

final private class Ball extends Ellipse {
  //Global variables 
  //
  //Constructor
  private Ball (float x, float y, float diameter, float yDiameter ) {
    super (x, y, diameter, yDiameter);
  }//End Constrctor 
  //
  //
  //Common Methods 
  public void draw() {
    fillCodeColour();
    ellipse(x, y, diameter, yDiameter);
    fillResetColor();
  }
}//End Ball

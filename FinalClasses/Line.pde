private class Line extends Point {
  //Global variabls
  private float xPt, yPt;
  //
  //Constructor
  private Line (float x, float y, float xPt, float yPt) {
    super(x, y);
    this.xPt = xPt;
    this.yPt = yPt;
  }
  //
  public void draw() {
    //stroke(#FFFFFF);
    //strokeWeight(40);
    line(x, y, xPt, yPt);
  }//End draw
  //
  //Common Methods 
  //
} //End Line

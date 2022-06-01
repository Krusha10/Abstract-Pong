private class Line extends Point {
  //Global variabls
  public float xPt, yPt;
  //
  //Constructor
  private Line (float x, float y, float xPt, float yPt) {
    super(x, y);
    this.xPt = xPt;
    this.yPt = yPt;
  }
  //
  public void draw() {
    line(x, y, xPt, yPt);
  }//End draw
  //
  //Common Methods 
  //
} //End Line

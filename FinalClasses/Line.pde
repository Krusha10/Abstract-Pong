class Line extends Point {
  //Global variabls
  float xPt, yPt;
  //
  //Constructor
  Line (float x, float y, float xPt, float yPt) {
    super(x, y);
    this.xPt = xPt;
    this.yPt = yPt;
  }
  //
  void draw() {
    line(x, y, xPt, yPt);
  }//End draw
  //
  //Common Methods 
  //
} //End Line

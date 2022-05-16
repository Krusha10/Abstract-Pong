class Ellipse extends Circle {
  //Global variabls
  float yDiameter;
  //
  //Constructor
  Ellipse (float x, float y, float diameter, float yDiameter) {
    super (x, y, diameter);
    this.yDiameter = yDiameter;
  }
  //
  void draw() {
    ellipse(x, y, diameter, yDiameter);
  }//End draw
  //
  //Common Methods 
  //
} //End Ellipse

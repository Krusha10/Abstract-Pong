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
    fillCodeColour(); //Non-reset colour
    ellipse(x, y, diameter, yDiameter);
    fillResetColor();   }//End draw
  //
  //Common Methods 
  //
} //End Ellipse

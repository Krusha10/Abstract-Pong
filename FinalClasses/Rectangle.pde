class Rectangle extends Ellipse {
  //Global variabls
  //
  //Constructor
  Rectangle (float x, float y, float diameter, float yDiameter) {
    super (x, y, diameter, yDiameter);
  }
  //
  void draw() {
    rect(x, y, diameter, yDiameter);
  }//End draw
  //
  //Common Methods 
  //
}//End Rectangle

class Rectangle extends Ellipse {
  //Global variabls
  //
  //Constructor
  Rectangle (float x, float y, float diameter, float yDiameter) {
    super (x, y, diameter, yDiameter);
  }
  //
  void draw() {
    fillCodeColour(); //Non-reset colour
    rect(x, y, diameter, yDiameter);
    fillResetColor(); //Reset colour
  }//End draw
  //
  //Common Methods 
  //
}//End Rectangle

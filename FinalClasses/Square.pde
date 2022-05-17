class Square extends Point {
  //Global variabls
  float side;
  //
  //Constructor
  Square (float x, float y, float side) {
    super(x, y);
    this.side = side;
  }//End Constructor 
  //
  void draw() {
    fillCodeColour(); //Non-reset colour
    square(x , y, side);
    fillResetColor(); //Reset colour
  }//End draw
  //
  //Common Methods 
  public color fillColour (color colour) {
    return color(0, 0, colour);
  }
  //
} //End Square

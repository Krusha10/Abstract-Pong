class Rectangle extends Square {
  //Global variabls
  public float sideHeight;
  //
  //Constructor
  Rectangle (float x, float y, float side, float sideHeight) {
    super (x, y, side);
    this.sideHeight = sideHeight;
  }
  //
  void draw() {
    fillCodeColour(); //Non-reset colour
    rect(x, y, side, sideHeight);
    fillResetColor(); //Reset colour
  }//End draw
  //
  //Common Methods 
  final public color fillColour (color colour) {
    return color(0, 0, colour);
  }
  //
}//End Rectangle

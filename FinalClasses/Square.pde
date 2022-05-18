private class Square extends Point {
  //Global variabls
  public float side;
  //
  //Constructor
  private Square (float x, float y, float side) {
    super(x, y);
    this.side = side;
  }//End Constructor 
  //
  public void draw() {
    fillCodeColour(); //Non-reset colour
    square(x , y, side);
    fillResetColor(); //Reset colour
  }//End draw
  //
  //Common Methods 
  public color fillColour (color colour) {
    //return color(random(0, 255), random(0, 255), random(0));
    return color (#E4EA89);
  }
  //
} //End Square

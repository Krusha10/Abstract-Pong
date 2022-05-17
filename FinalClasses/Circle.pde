private class Circle extends Point {
  //Global variabls
  public float diameter;
  //
  //Constructor
  private Circle( float x, float y, float diameter ) {
    super (x, y );
    this.diameter = diameter;
  }//End Constructor 
  //
  public void draw() {
    fillCodeColour(); //Non-reset colour
    circle(x, y, diameter);
    fillResetColor();
  }//End draw
  //
  public color fillColour(color colour) {
    if (colour != 255) { return 255 ;} else {return color(random(255), random(255), random(255));}
  }//End fillColour 
  //
  //Common Methods 
  //
} //End Circle

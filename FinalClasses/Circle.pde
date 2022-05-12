class Circle extends Point {
  //Global variabls
  float diameter;
  //
  //Constructor
  Circle( float x, float y, float diameter ) {
    super (x, y );
    this.diameter = diameter;
  }//End Constructor 
  //
  void draw() {
    circle(x, y, diameter);
  }//End draw
  //
  //Common Methods 
  //
} //End Circle

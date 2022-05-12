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
    square(x , y, side);
  }//End draw
  //
  //Common Methods 
  //
} //End Square

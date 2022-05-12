abstract class Shape {
  //Global variabls
  float x, y;
  //
  //Constructor : point (), line (), ellipse(), circle(), square(), rect()
  Shape(float xParameter, float yParameter) {
    this.x = xParameter;
    this.y = yParameter; 
  }//End  Constructor 
  //
  abstract void draw(); //End draw
  //
  //Common Methods 
  //
}//End Shape

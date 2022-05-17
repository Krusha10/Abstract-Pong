abstract private class Shape {
  //Global variabls
  public float x, y;
  //
  //Constructor : point (), line (), ellipse(), circle(), square(), rect()
  private Shape(float xParameter, float yParameter) {
    this.x = xParameter;
    this.y = yParameter; 
  }//End  Constructor 
  //
  abstract public void draw(); //End draw
  //
  //Common Methods 
  //abstract void fillResetColor();
  //
}//End Shape

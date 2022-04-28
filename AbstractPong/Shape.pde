abstract class Shape {
  //Global variables
  float x;
  float y;
  float w;
  float h;
  //
  //Constructor
  Shape(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }//End Constructor 
  //
  //Methods
  abstract void draw();//Manditory, references extended classes
  //Note: no braces, code in extended classes
  //
  abstract void leftPaddleBounce(float x, float y, float h, float w);
 
  abstract void rightPaddleBounce(float x, float y, float h);
  abstract float xGetter();
  abstract float yGetter();
  abstract float wGetter();
  abstract float hGetter();
}//End class Shape

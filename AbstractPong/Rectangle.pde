class Rectangle extends Shape{
  //Global variables
  color colour, nightModeColour, resetColour = #FFFFFF;
  float xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle;
  //
  //Constructor
  Rectangle(float x, float y, float w, float h) {
    super(x, y, w, h);
    xLeftPaddle = x;
    xRightPaddle = x;
    yRightPaddle = y;
    yLeftPaddle = y;
    widthPaddle = w;
    heightPaddle = h;
    colour = color(random(0, 255), random(255), random(255));
    nightModeColour = colour = color(random(0, 255), random(255), 0);
  }//End Constructor
  //
  //Methods
  void draw() {
    //fill(colour);
    //rect(x, y , w, h);
    //fill(nightModeColour);
    leftPaddle();
    rightPaddle();
  }//End draw()
  //
  void leftPaddle() {
    fill(colour);
    rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
    fill(resetColour);
  }//End leftPaddle
  //
  void rightPaddle() {
    fill(colour);
    rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
    fill(resetColour);
  }//End rightPaddle
  //
  float xRightPaddleGetter() {
    return xRightPaddle;
  }
  float yRightPaddleGetter() {
    return yRightPaddle;
  }
  float xLeftPaddleGetter() {
    return xLeftPaddle;
  }
  float yLeftPaddleGetter() {
    return yLeftPaddle;
  }
  float heightPaddleGetter() {
    return h;
  }
  float widthPaddleGetter() {
    return w;
  }
}//End Rectangle

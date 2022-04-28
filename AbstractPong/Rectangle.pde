class Rectangle extends Shape{
  //Global variables
  color colourDayMode, nightModeColour, resetColour = #FFFFFF;
  float xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle;
  //
  //Constructor
  Rectangle(float x, float y, float w, float h, color colourDayParameter, color nightModeColourParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;//color(random(0, 255), random(255), random(255));
    this.nightModeColour = nightModeColourParameter;//colour = color(random(0, 255), random(255), 0);
    xLeftPaddle = x;
    xRightPaddle = x;
    yRightPaddle = y;
    yLeftPaddle = y;
    widthPaddle = w;
    heightPaddle = h;
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
    fill(colourDayMode);
    rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
    fill(resetColour);
  }//End leftPaddle
  //
  void rightPaddle() {
    fill(colourDayMode);
    rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
    fill(resetColour);
  }//End rightPaddle
  //
  float xGetter() {
    return x;
  }
  float yGetter() {
    return y;
  }
  float wGetter() {
    return w;
  }
  float hGetter() {
    return h;
  }
  //
  //common methods 
  void leftPaddleBounce(float x, float y, float h, float w) {}
  void rightPaddleBounce(float x, float y, float h) {}
}//End Rectangle

class Rectangle extends Shape {
  //Global variables
  color colourDayMode, nightModeColour, resetColour = #FFFFFF;
  Boolean moveUp, moveDown;
  int yMove;
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
    yMove = 4;
    this.moveUp = false;
    this.moveDown = false;
  }//End Constructor
  //
  //Methods
  void draw() {
    if (moveUp == true) y -= yMove;
    if (moveDown == true) y += yMove;
    //
    fill(colourDayMode);
    rect(x, y, w, h);
    fill(nightModeColour);
    //
    paddleMove();
  }//End draw()
  //
  void paddleMove() {
    if (yLeftPaddle <= height*0) yLeftPaddle = 0;
    if (yLeftPaddle >= height - heightPaddle) yLeftPaddle = height - heightPaddle;
    if (yRightPaddle <= height*0) yRightPaddle = 0;
    if (yRightPaddle >= height - heightPaddle) yRightPaddle = height - heightPaddle;
  }//End paddleMove
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
  color colourDayGetter() {
    return colourDayMode;
  }
  color nightModeColourGetter() {
    return nightModeColour;
  }
  //Setters
  void upMovementPaddles() {
    moveUp = true;
    moveDown = false;
  }//End upMovementPaddle 
  void downMovementPaddles() {
    moveUp = false;
    moveDown = true;
  }//End downMovementPaddle
  void stopPaddle() {
    moveUp = false;
    moveDown = false;
  }//End stopPaddle
  //
  //common methods 
  void leftPaddleBounce(float x, float y, float h, float w) {
  }
  void rightPaddleBounce(float x, float y, float h) {
  }
}//End Rectangle

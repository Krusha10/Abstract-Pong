class Rectangle extends Shape {
  //Global variables
  color colourDayMode, nightModeColour, resetColour = #FFFFFF;
  Boolean moveUp, moveDown, xLeftBallGoal = false, xRightBallGoal = false, screenSaver = false, singlePlayer = false ;
  int yMove, paddleSpeed = 0;
  float xLeftPaddle, yLeftPaddle, xRightPaddle, yRightPaddle, widthPaddle, heightPaddle;
  //
  //Constructor
  Rectangle(float x, float y, float w, float h, color colourDayParameter, color nightModeColourParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;//color(random(0, 255), random(255), random(255));
    this.nightModeColour = nightModeColourParameter;//colour = color(random(0, 255), random(255), 0);
    xLeftPaddle = appWidth*1/40;
    yLeftPaddle = appHeight*1/3;
    xRightPaddle = appWidth*16/17;
    yRightPaddle = appHeight*1/3;
    widthPaddle = w;
    heightPaddle = h;
    this.yMove = 4;
    this.moveUp = false;
    this.moveDown = false;
  }//End Constructor
  //
  //Methods
  void draw() {
    //
    fill(colourDayMode);
    rect(x, y, w, h);
    println(x,y, w, h);
    println(xLeftPaddle, xRightPaddle);
    fill(nightModeColour);
    //leftPaddle();
    //rightPaddle();
    //
    paddleMove();
  }//End draw()
  //
  /*
  void leftPaddle() {
    fill(colourDayMode);
    rect(xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle);
    fill(resetColour);
    paddleMove();
  }//End leftPaddle
  //
  void rightPaddle() {
    fill(colourDayMode);
    rect(xRightPaddle, yRightPaddle, widthPaddle, heightPaddle);
    fill(resetColour);
    paddleMove();
  }//End rightPaddle
  //
  */
  //
  void paddleMove() {
    println("yesssssss");
    if (moveUp == true) y -= yMove;
    if (moveDown == true) y += yMove;
    //
    if (y <= height*0) y = 0;
    if (y >= height - heightPaddle) y = height - heightPaddle;
    if (y <= height*0) y = 0;
    if (y >= height - heightPaddle) y = height - heightPaddle;
    //
  }//End paddleMove
  //
  void paddleMoveReset() {
    moveUp = false; 
    moveDown = false;
  }
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
  Boolean leftBallGoalGetter() {
    return xLeftBallGoal;
  }
  Boolean rightBallGoalGetter() {
    return xRightBallGoal;
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
  //
  void ballObjects(float x, float y, float w, float h) {
  }
  //
  void textSetup() {}
  //
}//End Rectangle

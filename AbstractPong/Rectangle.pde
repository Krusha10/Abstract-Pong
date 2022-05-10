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
    //xLeftPaddle = appWidth*1/40;
    //yLeftPaddle = appHeight*1/3;
    //xRightPaddle = appWidth*16/17;
    //yRightPaddle = appHeight*1/3;
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
    fill(nightModeColour);
    paddleMove();
  }//End draw()
  //
  void paddleMove() {
    if (moveUp == true) y -= paddleSpeed;
    if (moveDown == true) y += paddleSpeed;
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
  void ballObjects(float x, float y, float w, float h) {
  }
  //
  void scoreObjects(int rightScore, int leftScore) {
    if (leftScore == 2 || rightScore == 2) heightPaddle = int(height*1/5);
    if (leftScore == 3 || rightScore == 3) heightPaddle = int(height*1/6); 
    if (leftScore == 4 || rightScore == 4) heightPaddle = int(height*1/7);
  }
  //
  void textSetup() {
  }
  //
}//End Rectangle

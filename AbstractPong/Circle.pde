class Circle extends Shape {
  //Global variables
  color colourDayMode, nightModeColour, resetColour = #FFFFFF;
  int xSpeed, ySpeed; 
  int leftGoalScore = 0, rightGoalScore = 0;
  float diameter, yLeftScore, yRightScore, widthScore, heightScore, xLeftScore, xRightScore;
  Boolean xLeftBallGoal = false, xRightBallGoal = false;
  //
  //Constructor
  Circle(float x, float y, float w, float h, color colourDayParameter, color nightModeColourParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;//color(random(0, 255), random(255), random(255));
    this.nightModeColour = nightModeColourParameter;//colour = color(random(0, 255), random(255), 0);
    diameter =  w;
    this.xSpeed = int (random (1, 6));
    this.ySpeed = int (random (1, 6));
    yLeftScore = yRightScore = height*0;
    widthScore = width*1/10;
    heightScore = height*1/10;
    xLeftScore = (width*1/4) - (widthScore*1/2);
    xRightScore = (width*3/4) - (widthScore*1/2);
  }//End Constructor
  //
  //Methods
  void draw() {
    println(x);
    fill(colourDayMode);
    ellipse(x, y, w, h);
    fill(resetColour);
    ballScore();
    println(x);
  }//End draw()
  //
  void move() {
    x += xSpeed;
    y += ySpeed;
  }//End move
  //
  private void bounceBall() { //Not A Bounce Off Paddles
    if (x - diameter*1/2 < width*0 || x + diameter*1/2 > width) {
      xSpeed *= 0; 
      ySpeed *= 0;
      //x = width*1/2;
      //y = height*1/2;
    }
    if (y - diameter*1/2 < height*0 || y + diameter*1/2 > height) ySpeed *= -1;
  }//End Bounce
  //
  void ballScore() {
    move();
    bounceBall();
    //
    if ( x < (width*0) + diameter ||x > width - diameter ) { //Net detection
      if ( x < (width*0) + diameter) {
        //Score
        xLeftBallGoal = true;
        fill (#E03D3D);
        fill (#DE53C0);
        fill (#53DEC3);
        fill (#53DE7D);
        fill (#EBFA49);
        fill (resetColour);
        leftGoalScore ++;
        x = width*1/2;
        y = height*1/2;
      }//Goal for left player
      if ( x > width - diameter) {
        //Score
        xRightBallGoal = true;
        fill (#E03D3D);
        fill (#DE53C0);
        fill (#53DEC3);
        fill (#53DE7D);
        fill (#EBFA49);
        fill (resetColour);
        rightGoalScore ++;
        x = width*1/2;
        y = height*1/2;
      }//Goal for right player
    }//End Net detection 
    //
    if (xLeftBallGoal == true || xRightBallGoal == true) {
      scoreSetter();
    } else {
      move();
    }
    //
    textAlign(int(width*1/4), int( height * 1.2));
    textSize(width*1/30);
    fill(#FF9558);
    text(rightGoalScore, width/4, width*1/14);
    textAlign(int(width*1/4), int( height * 1.2));
    textSize(width*1/30);
    fill(#FF9558);
    text(leftGoalScore, width/1.35, width*1/14);

    //textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(rightGoalScore), xLeftScore, yLeftScore, widthScore, heightScore);
    //textDraw(height, darkPinkInk, CENTER, CENTER, titleFont, str(leftGoalScore), xRightScore, yRightScore, widthScore, heightScore);
  }//End ballScore
  //
  void scoreSetter() {
    if (leftGoalScore == 5 || rightGoalScore == 5) {
      if (rightGoalScore == 5) {
        background(#A58C8C);
        //paddles.paddleMoveReset();
        xSpeed = 0;
        ySpeed = 0;
        textAlign(CENTER);
        textSize(width*1/30);
        fill(#FF9558);
        text("WINNER", width/2, width*1/5);
        fill(#FF9558);
        text("LEFT PLAYER WINS!", width/2, width*1/4);
        leftGoalScore = 0;
      }
      if (leftGoalScore == 5) {
        background(#A58C8C);
        //paddles.paddleMoveReset();
        xSpeed = 0;
        ySpeed = 0;
        textAlign(CENTER);
        textSize(width*1/30);
        fill(#FF9558);
        text("WINNER", width/2, width*1/5);
        fill(#FF9558);
        text("RIGHT PLAYER WINS!", width/2, width*1/4);
        rightGoalScore = 0;
      }
    }
  }
  //Getters
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
  int scoreLGetter() {
    return rightGoalScore;
  }
  int scoreRGetter() {
    return leftGoalScore;
  }
  //Common methods 
  void ballObjects(float x, float y, float w, float h) {
  }
  //
  void scoreObjects(int rightGoalScore, int leftGoalScore) {
  }
  //
  void playingModes(float x, float y) {}
  //
  void leftPaddleBounce( float xPaddleLeft, float yPaddleLeft, float paddleHeight, float paddleWidth) {
    if ( x < xPaddleLeft + paddleWidth + (diameter*1/2) && y > yPaddleLeft && y < yPaddleLeft+paddleHeight ) xSpeed *= -1;
  }
  void rightPaddleBounce( float xPaddleRight, float yPaddleRight, float paddleHeight) {
    if ( x >= xPaddleRight-w*1/2 && y > yPaddleRight && y < yPaddleRight+paddleHeight ) xSpeed *=-1;
  }
  //
  void upMovementPaddles() {
  }
  void downMovementPaddles() {
  }
  void stopPaddle() {
  }
  //
  //
  //
  //Text Calculator 
  PFont titleFont;
  //
  color darkPinkInk = #D65083;
  color nightModePinkInk = #FF43B1, resetColor = #000000;
  //
  void textSetup()
  {
    titleFont = createFont("Georgia", 55);
  }
  //
  void preDrawText(float height, color ink, int alignHorizontal, int alignVerticle, PFont font) 
  {
    fill(ink);
    textAlign(alignHorizontal, alignVerticle);
    textFont(font, height);
  }
  //
  void textDraw(float height, color ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec) 
  {
    preDrawText( height, ink, alignHorizontal, alignVerticle, font);
    textSize(textCalculator(height, string, widthRec));  
    text(string, xRect, yRec, widthRec, heightRec);
    textReset();
  }//End textDraw()

  void textReset()
  {
    fill(resetColor); // Ink to default
  }//End textReset()
  //
  float textCalculator(float size, String string, float widthRec) 
  {
    textSize(size);
    while (textWidth(string) > widthRec) 
    {
      size = size * 0.9;
      textSize(size);
    }//End While
    size = size * 0.15; //Additional decrease for Font
    return size;
  }//End textCalculator
  //
}//End Circle 

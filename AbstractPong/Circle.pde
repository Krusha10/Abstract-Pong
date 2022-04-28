class Circle extends Shape {
  //Global variables
  color colourDayMode, nightModeColour, resetColour = #FFFFFF;
  int xSpeed, ySpeed;
  float diameter;
  //
  //Constructor
  Circle(float x, float y, float w, float h, color colourDayParameter, color nightModeColourParameter) {
    super(x, y, w, h);
    this.colourDayMode = colourDayParameter;//color(random(0, 255), random(255), random(255));
    this.nightModeColour = nightModeColourParameter;//colour = color(random(0, 255), random(255), 0);
    diameter =  w;
    this.xSpeed = int (random (1, 6));
    this.ySpeed = int (random (1, 6));
  }//End Constructor
  //
  //Methods
  void draw() {
    fill(colourDayMode);
    ellipse(x, y, w, h);
    fill(resetColour);
    move();
    bounceBall();
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
  void leftPaddleBounce( float xPaddleLeft, float yPaddleLeft, float paddleHeight, float paddleWidth) {
    if ( x < xPaddleLeft + paddleWidth + (diameter*1/2) && y > yPaddleLeft && y < yPaddleLeft+paddleHeight ) xSpeed *= -1;
  }
  void rightPaddleBounce( float xPaddleRight, float yPaddleRight, float paddleHeight) {
    if ( x >= xPaddleRight && y > yPaddleRight && y < yPaddleRight+paddleHeight ) xSpeed *=-1;
  }
}//End Circle 

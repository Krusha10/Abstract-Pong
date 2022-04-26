class Circle extends Shape {
  //Global variables
  color colour, nightModeColour;
  int xSpeed, ySpeed;
  int diameter;
  //
  //Constructor
  Circle(float x, float y, float w, float h) {
    super(x, y, w, h);
    colour = color(random(0, 255), random(255), random(255));
    nightModeColour = colour = color(random(0, 255), random(255), 0);
    diameter =  appWidth*1/20;
    this.xSpeed = int (random (1, 6));
    this.ySpeed = int (random (1, 6));
  }//End Constructor
  //
  //Methods
  void draw() {
    fill(colour);
    ellipse(x, y, w, h);
    fill(nightModeColour);
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
}//End Circle 

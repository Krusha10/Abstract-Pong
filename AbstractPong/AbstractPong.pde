//Global Variables and Other Items like Classes
ArrayList<Shape> shapes = new ArrayList<Shape>();
Boolean instructionOn = false;
//
//Annonymous Class (one time object) (in between local and global variables)
Shape instructions = new Shape (350*1/2, 250*1/2, 320, 320) {
  //Global variables, no constructor needed
  color colourDayMode, nightModeColour;
  Boolean xLeftBallGoal = false, xRightBallGoal = false;
  void draw() {
    fill(#FAF688);
    rect(x, y, w, h);//Background for instructions display
    //Text code here:
    fill(#FFFFFF);//Reset color
  }
  //Methods for possible text drawing
  void leftPaddleBounce(float x, float y, float h, float w) {
  }
  void rightPaddleBounce(float x, float y, float h) {
  }
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
  void textSetup() {}
  //
}
; //colon is necessary code
//
void setup() 
{
  size(700, 500);
  //fullScreen(); //displayWidth, displayHeight
  display();
  //
  //Local variables and Object setup
  //
  //Instructions: 
  shapes.add(instructions);//Element 0
  shapes.get(3).textSetup();
  //
  //Paddles and Ball
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/20;
  int recwidth = appWidth*1/30;
  int recHeight = appHeight*1/4;
  int colourDayRecRight = color(random(0, 255), random(255), random(255));
  int colourNightRecRight = color(random(0, 255), random(255), 0);
  int colourDayRecLeft = color(random(0, 255), random(255), random(255));
  int colourNightRecLeft = color(random(0, 255), random(255), 0);
  int colourBallDay = color(random(0, 255), random(255), random(255));
  int colourBallnight = color(random(0, 255), random(255), 0);
  Rectangle recLeft = new Rectangle(appWidth*1/40, appHeight*1/3, recwidth, recHeight, colourDayRecLeft, colourNightRecLeft);
  Rectangle recRight = new Rectangle(appWidth*16/17, appHeight*1/3, recwidth, recHeight, colourDayRecRight, colourNightRecRight);
  Circle cHex = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourBallDay, colourBallnight);
  //
  //Shapes Global variables, Shapes will never change
  shapes.add(recLeft);//Element 1
  shapes.add(recRight);//Element 2
  shapes.add(cHex);//Element 3
}//End setup()
//
void draw() {
  background(#000000);
  //
  if (instructionOn == true) shapes.get(0).draw();
  //
  if (instructionOn == false) {
    shapes.get(3).leftPaddleBounce(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).hGetter(), shapes.get(1).wGetter());
    shapes.get(3).rightPaddleBounce(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).hGetter());
    //
    for (int i = 1; i < shapes.size(); i++) {
      shapes.get(i).draw();
    }//End for loop
  }
  /*
  if (shapes.get(3).leftBallGoalGetter() == true ) {
   println("goal");
   //paddles.leftScoreSetter(ball[i].leftBallGoalGetter());
   shapes.get(3).leftBallGoalGetter() = false;
   }
   if (shapes.get(3).rightBallGoalGetter() == true ) {
   println("goal");
   //paddles.rightScoreSetter(ball[i].rightBallGoalGetter());
   shapes.get(3).xRightBallGoal = false;
   //rightScoreOff[i] = true;
   }
   */
}//End draw()
//
void keyPressed() {
  //Instructions: Features, hints for easter eggs
  if (key == CODED && key == 'I' || key == 'i') {
    if (instructionOn == true) {
      instructionOn = false;
    } else {
      instructionOn = true;
    }
  }//End IF
  //
  //LeftPaddle, element 0
  if (key == CODED && key == 'W' || key == 'w') {
    Rectangle leftPaddle = new Rectangle(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter(), shapes.get(1).colourDayGetter(), shapes.get(1).nightModeColourGetter());
    leftPaddle.upMovementPaddles();
    shapes.set(1, leftPaddle);
  }//End W key
  if (key == CODED && key == 'S' || key == 's') {
    Rectangle leftPaddle = new Rectangle(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter(), shapes.get(1).colourDayGetter(), shapes.get(1).nightModeColourGetter());
    leftPaddle.downMovementPaddles();
    shapes.set(1, leftPaddle);
  }//End S key
  if (key == CODED && key == 'D' || key == 'd') {
    Rectangle paddleStop = new Rectangle(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter(), shapes.get(1).colourDayGetter(), shapes.get(1).nightModeColourGetter());
    paddleStop.stopPaddle();
    shapes.set(1, paddleStop);
  }//End D key
  //
  //RightPaddle, element 1
  if (key == CODED && keyCode == UP) {
    Rectangle rightPaddle = new Rectangle(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).wGetter(), shapes.get(2).hGetter(), shapes.get(2).colourDayGetter(), shapes.get(2).nightModeColourGetter());
    rightPaddle.upMovementPaddles();
    shapes.set(2, rightPaddle);
  }//End Up key
  if (key == CODED && keyCode == DOWN) {
    Rectangle rightPaddle = new Rectangle(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).wGetter(), shapes.get(2).hGetter(), shapes.get(2).colourDayGetter(), shapes.get(2).nightModeColourGetter());
    rightPaddle.downMovementPaddles();
    shapes.set(2, rightPaddle);
  }//End Down key
  if (key == CODED && keyCode == LEFT) {
    Rectangle paddleStop = new Rectangle(shapes.get(2).xGetter(), shapes.get(2).yGetter(), shapes.get(2).wGetter(), shapes.get(2).hGetter(), shapes.get(2).colourDayGetter(), shapes.get(2).nightModeColourGetter());
    paddleStop.stopPaddle();
    shapes.set(2, paddleStop);
  }//End Left key
  //
}//End keyPressed()
//
void mousePressed() {
  shapes.remove(3);//Remove the ball element
  //
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/20;
  int colourBallDay = color(random(0, 255), random(255), random(255));
  int colourBallnight = color(random(0, 255), random(255), 0);
  Circle cHex = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourBallDay, colourBallnight);
  shapes.add(3, cHex);//add a new ball object
}//End mousePressed
//
//End Main program (driver)

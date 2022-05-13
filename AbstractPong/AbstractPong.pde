//Global Variables and Other Items like Classes
ArrayList<Shape> shapes = new ArrayList<Shape>();
Boolean instructionOn = true, restart = false;
//
//Annonymous Class (one time object) (in between local and global variables)
Shape instructions = new Shape (width*1, height*1/4, 500, 450) {
  //Global variables, no constructor needed
  color colourDayMode, nightModeColour, rightGoalScore, leftGoalScore;
  //
  PFont titleFont;
  //
  String notes = "LET'S PLAY PONG \n To play pong click the screen and press I to get started \n Click on the screen to get a new ball \n While score moves up the paddle size will decrease \n To select speed for paddles, prees s for slow, r for regular, f for fast \n The game is best of 5, whoever scores 5 first wins the game.";
  //String notes1 = "While score moves up the paddle size will decrease";
  color darkPinkInk = #D65083;
  color nightModePinkInk = #FF43B1, resetColor = #000000;
  //
  void draw() {
    textSetup();
    fill(#FAF688);
    rect(x, y, w, h);//Background for instructions display
    //Text code here:
    fill(#FFFFFF);//Reset color
    textDraw( h, darkPinkInk, CENTER, CENTER, titleFont, notes, x, y, w, h );
    //textDraw( h, darkPinkInk, CENTER, CENTER, titleFont, notes1, x, y, w, h );
  }
  //Methods for possible text drawing
  //
  //Text Calculator 
  //
  void textSetup()
  {
    titleFont = createFont("Georgia", 55);
  }
  //
  void textDraw(float height, color ink, int alignHorizontal, int alignVerticle, PFont font, String string, float xRect, float yRec, float widthRec, float heightRec) 
  {
    fill(ink);
    textAlign(alignHorizontal, alignVerticle);
    textFont(font, height);
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
    //size = size * 0.15; //Additional decrease for Font
    return size;
  }//End textCalculator
  //
  void leftPaddleBounce(float x, float y, float h, float w) {
  }
  void rightPaddleBounce(float x, float y, float h) {
  }
  void ballObjects(float x, float y, float w, float h) {}
  //
  void playingModes(float xBallMove, float yBallMove) {}
  //
  void scoreObjects(int rightGoalScore, int leftGoalScore) {}
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
  int scoreLGetter() {
    return rightGoalScore;
  }
  int scoreRGetter() {
    return leftGoalScore;
  }
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
  //TO BE FIXED
  //.textSetup();
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
    shapes.get(1).scoreObjects(shapes.get(3).scoreRGetter(), shapes.get(3).scoreLGetter());
    shapes.get(2).scoreObjects(shapes.get(3).scoreRGetter(), shapes.get(3).scoreLGetter());
    shapes.get(1).playingModes(shapes.get(3).xGetter(), shapes.get(3).yGetter());
    shapes.get(2).playingModes(shapes.get(3).xGetter(), shapes.get(3).yGetter());
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
  if (key == 'Q' || key == 'q') {
    restart = false;
  }
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

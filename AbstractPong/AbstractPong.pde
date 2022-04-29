//Global Variables and Other Items like Classes
ArrayList<Shape> shapes = new ArrayList<Shape>();
//
void setup() 
{
  size(700, 500);
  //fullScreen(); //displayWidth, displayHeight
  display();
  //
  //Local variables and Object setup
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
  shapes.add(recLeft);//Element 0
  shapes.add(recRight);//Element 1
  shapes.add(cHex);//Element 2
}//End setup()
//
void draw() {
  background(#000000);
  shapes.get(2).leftPaddleBounce(shapes.get(0).xGetter(), shapes.get(0).yGetter(), shapes.get(0).hGetter(), shapes.get(0).wGetter());
  shapes.get(2).rightPaddleBounce(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).hGetter());
  //
  for (int i = 0; i < shapes.size(); i++) {
    shapes.get(i).draw();
  }//End for loop
}//End draw()
//
void keyPressed() {
  //LeftPaddle, element 0
  if (key == CODED && key == 'W' || key == 'w') {
    Rectangle leftPaddle = new Rectangle(shapes.get(0).xGetter(), shapes.get(0).yGetter(), shapes.get(0).wGetter(), shapes.get(0).hGetter(), shapes.get(0).colourDayGetter(), shapes.get(0).nightModeColourGetter());
    leftPaddle.upMovementPaddles();
    shapes.set(0, leftPaddle);
  }//End W key
  if (key == CODED && key == 'S' || key == 's') {
    Rectangle leftPaddle = new Rectangle(shapes.get(0).xGetter(), shapes.get(0).yGetter(), shapes.get(0).wGetter(), shapes.get(0).hGetter(), shapes.get(0).colourDayGetter(), shapes.get(0).nightModeColourGetter());
    leftPaddle.downMovementPaddles();
    shapes.set(0, leftPaddle);
  }//End S key
  if (key == CODED && key == 'D' || key == 'd') {
    Rectangle paddleStop = new Rectangle(shapes.get(0).xGetter(), shapes.get(0).yGetter(), shapes.get(0).wGetter(), shapes.get(0).hGetter(), shapes.get(0).colourDayGetter(), shapes.get(0).nightModeColourGetter());
    paddleStop.stopPaddle();
    shapes.set(0, paddleStop);
  }//End D key
  //
  //RightPaddle, element 1
  if (key == CODED && keyCode == UP) {
    Rectangle rightPaddle = new Rectangle(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter(), shapes.get(1).colourDayGetter(), shapes.get(1).nightModeColourGetter());
    rightPaddle.upMovementPaddles();
    shapes.set(1, rightPaddle);
  }//End Up key
  if (key == CODED && keyCode == DOWN) {
    Rectangle rightPaddle = new Rectangle(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter(), shapes.get(1).colourDayGetter(), shapes.get(1).nightModeColourGetter());
    rightPaddle.downMovementPaddles();
    shapes.set(1, rightPaddle);
  }//End Down key
  if (key == CODED && keyCode == LEFT) {
    Rectangle paddleStop = new Rectangle(shapes.get(1).xGetter(), shapes.get(1).yGetter(), shapes.get(1).wGetter(), shapes.get(1).hGetter(), shapes.get(1).colourDayGetter(), shapes.get(1).nightModeColourGetter());
    paddleStop.stopPaddle();
    shapes.set(1, paddleStop);
  }//End Left key
  //
}//End keyPressed()
//
void mousePressed() {
  shapes.remove(2);//Remove the ball element
  //
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/20;
  int colourBallDay = color(random(0, 255), random(255), random(255));
  int colourBallnight = color(random(0, 255), random(255), 0);
  Circle cHex = new Circle(appWidth*1/2, appHeight*1/2, xDiameter, yDiameter, colourBallDay, colourBallnight);
  shapes.add(2, cHex);//add a new ball object
}//End mousePressed
//
//End Main program (driver)

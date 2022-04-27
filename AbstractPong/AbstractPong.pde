//Global Variables and Other Items like Classes
int appWidth, appHeight;
Circle cHex;
Rectangle recLeft, recRight;
//
void setup() 
{
  size(700, 500);
  //fullScreen(); //displayWidth, displayHeight
  display();
  int yDiameter;
  int xDiameter = yDiameter = appWidth*1/20;
  int recwidth = appWidth*1/30;
  int recHeight = appHeight*1/4;
  cHex = new Circle(appWidth*1/2, appHeight*1/2 , xDiameter, yDiameter);
  recLeft = new Rectangle(appWidth*1/40, appHeight*1/3, recwidth, recHeight);
  recRight = new Rectangle(appWidth*16/17, appHeight*1/3, recwidth, recHeight);
}//End setup()
//
void draw() {
  background(#000000);
  cHex.draw();
  cHex.xDirectionSetter(recLeft.xLeftPaddleGetter(), recLeft.yLeftPaddleGetter(), recLeft.xRightPaddleGetter(), recLeft.yRightPaddleGetter(), recLeft.heightPaddleGetter(), recLeft.widthPaddleGetter());
  cHex.xDirectionSetter(recRight.xLeftPaddleGetter(), recRight.yLeftPaddleGetter(), recRight.xRightPaddleGetter(), recRight.yRightPaddleGetter(), recRight.heightPaddleGetter(), recRight.widthPaddleGetter());
  recLeft.draw();
  recRight.draw();
}//End draw()
//
void keyPressed() {
}//End keyPressed()
//
void mousePressed() {
}//End mousePressed
//
//End Main program (driver)

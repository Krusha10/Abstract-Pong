//Global Variables & classes
ArrayList<Shape> shapes = new ArrayList<Shape>();
color white = 255, pink = #FA9FE3; 
//
void setup() {
  size(700, 500); 
  //fullScreen();
  float x = width*1/4;
  float y = height*1/4;
  float xPt = width*3/4; 
  float yPt = height*1/4;
  float diameter= width*1/10;
  float faceXPoint = width*1/2;
  float faceYPonit = height*1/2;
  float faceDiameter = width*3/5;
  FaceCircle fC = new FaceCircle(faceXPoint, faceYPonit, faceDiameter);
  Point p = new Point (x, y);
  Line l = new Line (x, y - width*1/200, xPt, yPt - width*1/200);
  Circle c = new Circle (x * 17/10, y, diameter); //LEFT eye
  LeftEye le = new LeftEye (x + width*1/5.7, y, diameter - width*0.05);//Left eyeball
  float yDiameter = width*1/9;
  Ellipse e = new Ellipse (x *20/10, y + height*2/10, diameter, yDiameter);//Nose
  float sides = width*1/4;
  //Square s = new Square (x, y+ width*1/9, sides);
  float recSide = height*1/3;
  //Rectangle r = new Rectangle (x , y+ width*1/9, diameter + width*1/4, recSide - height*2/55);
  Ball b = new Ball(x + width*1/3, y, diameter, diameter);//Right eye
  LeftEye re = new LeftEye (x + width*1/3, y, diameter - width*0.05);//Right eyeball
  Mouth m = new Mouth(x, y + height*0.40, xPt, yPt + height*0.40);
  Arc a = new Arc (x *2, y + height*0.34, 250, 250, 0, 3.15, CHORD);
  //Hat h = new Hat (x + width*1/2, y + width*1/9, sides-diameter, recSide);
  Ear er = new Ear (x - width*1/20, y, diameter + width*1/50);
  //
  shapes.add(fC);
  //shapes.add(p);
  shapes.add(l);
  shapes.add(c);
  shapes.add(le);
  shapes.add(e);
  shapes.add(b);
  shapes.add(re);
  shapes.add(m);
  shapes.add(a);
  //shapes.add(er);
  //
}//End setup
//
void draw() {
  background(pink);
  for (Shape s : shapes) {
    s.draw();
  }
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
}//End mousePressed
//
//End main program (driver)
//

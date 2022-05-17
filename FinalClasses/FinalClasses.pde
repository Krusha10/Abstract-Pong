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
  float diameter= width*1/6;
  Point p = new Point (x, y);
  Line l = new Line (x, y, xPt, yPt);
  Circle c = new Circle (x, y, diameter);
  float yDiameter = width*1/9;
  Ellipse e = new Ellipse (x, y, diameter, yDiameter);
  float sides = width*1/4;
  Square s = new Square (x, y, sides);
  float recSide = height*1/3;
  Rectangle r = new Rectangle (x , y, diameter, recSide);
  Ball b = new Ball(x + width*1/2, y+ width*1/2, diameter, diameter);
  Hat h = new Hat (x + width*1/2, y, sides-width*1/6, recSide);
  //Circle circle = new Ellipse (x+width*1/5, y+width*1/5, diameter+width*1/5, yDiameter+width*1/5);
  //
  shapes.add(c);
  shapes.add(p);
  shapes.add(l);
  shapes.add(e);
  shapes.add(s);
  shapes.add(r);
  shapes.add(h);
  shapes.add(b);
  //shapes.add(circle);
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

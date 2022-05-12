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
  float diameter= width*1/2;
  Point p = new Point (x, y);
  Line l = new Line (x, y, xPt, yPt);
  Circle c = new Circle (x, y, diameter);
  Ellipse e = new Ellipse ();
  Square s = new Square ();
  //
  shapes.add(c);
  shapes.add(p);
  shapes.add(l);
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

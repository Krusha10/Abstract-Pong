final private class Arc extends Point {
  //Global variabls
  float a, b, c, d;
  int e;
  //
  //Constructor
  private Arc (float x, float y, float a, float b, float c, float d, int e) {
    super(x, y);
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
    this.e = e;
  }
  //
  public void draw() {
    fill(0);
    arc(x, y, a, b, c, d, e);
  }//End draw
  //
  //Common Methods 
  //
} //End Line

class Dot {
  
  float xcor;
  float ycor;
  boolean eaten;
  
  //just a default construction, do not use
  public Dot() {
    xcor = 0;
    ycor = 0;
    eaten = false;
  }
  
  public Dot(Square s) {
    xcor = s.getX();
    ycor = s.getY();
    eaten = false;
  }
  
  void display() {
    ellipse(xcor,ycor,16,16);
  }
  
  boolean getEaten() {
    return eaten;
  }
  
}

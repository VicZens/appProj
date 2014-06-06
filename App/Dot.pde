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
    ellipseMode(CORNER);
    fill(225,225,0);
    ellipse(xcor+4,ycor+4,8,8);
  }
  
  void setEaten() {
    eaten = true;
  }
  
  boolean getEaten() {
    return eaten;
  }
  
}

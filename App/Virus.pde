class Virus{
  Dot[] dots;
  Square loc;
  Square[][] board;
  int x, y;
  PImage img = loadImage("WBC.jpg");
  Square next;
  
  Virus(Square s, Square[][] b, Dot[] d){
    loc = s;
    board = b;
    dx = 0;
    dy = 0;
    x = s.getX();
    y = s.getY();
    dots = d;
  }
  void move() {
    ArrayList b = getMoves();
    Square min = (Square) b.get(0);
    for (int x = 1; x < b.size(); b++) {
      if (taxicabDist(min, c.loc) < taxicabDist(b.get(x), c.loc){
        min = b.get(x);
      }
    }
    loc = min;
    x = loc.xcor;
    y = loc.ycor;
  }
  void draw() {
    move();
    // this is where you guys make the jpeg appear which I don't know how to do 
  }
  ArrayList getMoves();
    ArrayList out = new ArrayList();
    out.add(loc);
    // add up down left right squares if they're not wall squares; I don't know how you guys set up the board array
    return out;
  }
  int taxicabDist(Square a, Square b){
    return abs(a.xcor - b.xcor) + abs(a.ycor - b.ycor);
  }
}

class Cell{
  
  Dot[] dots;
  Square loc;
  Square[][] board;
  int dx, dy;
  int x, y;
  PImage img = loadImage("WBC.jpg");
  Square next;
  
  Cell(Square s, Square[][] b, Dot[] d){
    loc = s;
    board = b;
    dx = 0;
    dy = 0;
    x = s.getX();
    y = s.getY();
    dots = d;
  }

  void draw() {
    if(keyCode == UP){
      dx = 0;
      dy = -1;
    }
    else if(keyCode == DOWN){
      dx = 0;
      dy = 1;
    }
    else if(keyCode == LEFT){
      dx = -1;
      dy = 0;
    }
    else if(keyCode == RIGHT){
      dx = 1;
      dy = 0;
    }
    try {
      loc = board[round(x/16.0)][round(y/16.0)];
      next = board[loc.getX()/16 + dx][loc.getY()/16 + dy];
    } catch(ArrayIndexOutOfBoundsException e){
      if((int)loc.getX()/16 == 0){
        xyTooFarLeft();
        loc = board[0][14];
        next = board[27][14];
      }
      else{
        xyTooFarRight();
        loc = board[27][14];
        next = board[0][14];
      }
    }
    
    if (keyCode == LEFT || keyCode == RIGHT) {
      y = (int)loc.getY();
    } else if (keyCode == UP || keyCode == DOWN) {
      x = (int)loc.getX();
    }
    
    for(Dot d : dots) {
      if (!(d.getEaten())) {
        d.display();
      }
    }
    
    fill(0);
    stroke(255);
    rect(loc.getX(),loc.getY(),loc.getSize(),loc.getSize());
    if (dx<0) {
      image(img, x-1, y+1, img.height/9, img.width/9);
    } else if (dy<0) {
      image(img, x+1, y-1, img.height/9, img.width/9);
    } else {
      image(img, x+1, y+1, img.height/9, img.width/9);
    }
<<<<<<< HEAD
<<<<<<< HEAD
=======
    try {
    if(atWall(walls)){
       setAll(oldTRX,oldTRY,oldBLX,oldBLY);
    }} catch (NullPointerException n) {}
    image(cellI,getTRX(),getTRY(),getBLX(),getBLY());
>>>>>>> 9d0c6d6... Big Problems
=======
>>>>>>> d59ce28... Fixed
=======
    for (Dot d : dots) {
      if (d.xcor == x && d.ycor == y) {
        d.setEaten();
      }
    }
    
    if(next.getWall() || (dx == 0 && dy == 0)) {
      dx = 0;
      dy = 0;
    } else {      
      updateXY();
    }
    
>>>>>>> bc5beeb... IT WORKKKSSSSS
  }

  
  void updateXY () {
    x = x + dx;
    y = y + dy;
  }
  
   void xyTooFarRight() {
      x = 0;
   }
   void xyTooFarLeft() {
      x = 432;
   }
}

class Cell{
  
  Square loc;
  Square[][] board;
  int dx, dy;
  int x, y;
  PImage img = loadImage("WBC.jpg");
  
  Cell(Square s, Square[][] b){
    loc = s;
    board = b;
    dx = 0;
    dy = 0;
    x = 208;
    y = 176;
  }
/*
  void oldDraw(){//removed if(key == CODED), extraneous code.
    Square next;
    try{
      next = board[(int)((loc.getX()/16) + dx)][(int)((loc.getY()/16) - dy)];
    }
    catch(ArrayIndexOutOfBoundsException e){
      if((int)loc.getX()/16 == 0){
        next = board[27][14];
      }
      else{
        next = board[0][14];
      }
    }
    
    if(next.getWall() || (dx == 0 && dy == 0)) {
      dx = 0;
      dy = 0;
    }
    else{
      fill(255,255,0);
      noStroke();
      ellipseMode(CORNER);
      ellipse(next.getX()+1, next.getY()+1, 15, 15);
      fill(0);
      stroke(255);
      rect(loc.getX(),loc.getY(),loc.getSize(),loc.getSize());
      loc = next;
    }
  }
*/
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
    Square next;
    try {
      loc = board[x/16][y/16];
      next = board[(int)loc.getX()/16 + dx][(int)loc.getY()/16 + dy];
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
    
    
    if(next.getWall() || (dx == 0 && dy == 0)) {
      dx = 0;
      dy = 0;
    } else {      
      updateXY();
    }
<<<<<<< HEAD
    fill(0);
    stroke(255);
    rect(loc.getX(),loc.getY(),loc.getSize(),loc.getSize());
    loc = next;
    if (dx<0) {
      image(img, x-1, y+1, img.height/9, img.width/9);
    } else if (dy<0) {
      image(img, x+1, y-1, img.height/9, img.width/9);
    } else {
      image(img, x+1, y+1, img.height/9, img.width/9);
    }
=======
    try {
    if(atWall(walls)){
       setAll(oldTRX,oldTRY,oldBLX,oldBLY);
    }} catch (NullPointerException n) {}
    image(cellI,getTRX(),getTRY(),getBLX(),getBLY());
>>>>>>> 9d0c6d6... Big Problems
  }
  
  void updateXY () {
    x = x + dx;
    y = y + dy;
  }
  
  void check () {
    if(board[x][y].isCellOn) {
         board[x][y].c = #FFFFFF;
       }else{ 
         board[x][y].c = #000000;
       }
       stroke(board[x][y].c);
       fill(board[x][y].c);
       rect(x*16,y*16,16,16);
   }
   
   void xyTooFarRight() {
      x = 0;
   }
   void xyTooFarLeft() {
      x = 432;
   }
  
}

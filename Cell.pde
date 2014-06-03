class Cell{
  float topRightX, topRightY, bottomLeftX, bottomLeftY;
  PImage cellI = loadImage("WBC.jpg");
  
  Cell(float tRX, float tRY, float bLX, float bLY){
    topRightX = tRX;
    topRightY = tRY;
    bottomLeftX = bLX;
    bottomLeftY = bLY;
  }
  
  void moveUp(){
    topRightY--;
    bottomLeftY--;
  }
  void moveDown(){
    topRightY++;
    bottomLeftY++;
  }
  void moveRight(){
    topRightX++;
    bottomLeftX++;
  }
  void moveLeft(){
    topRightX--;
    bottomLeftX--;
  }
  
  float getTRX(){
    return topRightX;
  }
  float getTRY(){
    return topRightY;
  }
  float getBLX(){
    return bottomLeftX;
  }
  float getBLY(){
    return bottomLeftY;
  }
  
  void setAll(float tRX, float tRY, float bLX, float bLY){
    topRightX = tRX;
    topRightY = tRY;
    bottomLeftX = bLX;
    bottomLeftY = bLY;
  }
  
  boolean atWall(Wall[] walls){
    for(Wall w : walls){
      if(w.isIn(c.getTRX(),c.getTRY()) || w.isIn(c.getBLX(),c.getBLY()) || w.isIn(c.getTRX(),c.getBLY()) || w.isIn(c.getBLX(),c.getTRY())){
        return true;
      }
    }
    return false;
  }
  
  void draw(Wall[] walls){
    imageMode(CORNERS);
    float oldTRX = getTRX();
    float oldTRY = getTRY();
    float oldBLX = getBLX();
    float oldBLY = getBLY();
    if(keyCode == UP){
        moveUp();
    }
    else if(keyCode == DOWN){
      moveDown();
    }
    else if(keyCode == LEFT){
      moveLeft();
    }
    else if(keyCode == RIGHT){
      moveRight();
    }
    if(atWall(walls)){
       setAll(oldTRX,oldTRY,oldBLX,oldBLY);
    }
    image(cellI,getTRX(),getTRY(),getBLX(),getBLY());
  }
  
}

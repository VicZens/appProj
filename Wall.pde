class Wall{
  float topRightX, topRightY, bottomLeftX, bottomLeftY;
  
  Wall(float tRX, float tRY, float bLX, float bLY){
    topRightX = tRX;
    topRightY = tRY;
    bottomLeftX = bLX;
    bottomLeftY = bLY;
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
  
  boolean isIn(float x, float y){
    return topRightX < x && bottomLeftX < x && topRightY > y && bottomLeftY > y;  
  }
  
}

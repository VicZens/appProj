class Square{
  int xcor;
  int ycor;
  color c;
  float size;
  boolean wall;
  Square(int x, int y, float s, boolean w){
    xcor = x;
    ycor = y;
    wall = w;
    size = s;
    //isCellOn = false;
    if(wall){
      c = #009F9F;
    }
    else{
      c = #000000;
    }
  }
  int getX(){
    return xcor;
  }
  int getY(){
    return ycor;
  }
  float getSize(){
    return size;
  }
  color getColor(){
    return c;
  }
  boolean getWall(){
    return wall;
  }
}


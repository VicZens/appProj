class Square{
  float xcor;
  float ycor;
  color c;
  float size;
  boolean wall;
  Square(float x, float y, float s, boolean w){
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
  float getX(){
    return xcor;
  }
  float getY(){
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


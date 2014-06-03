class SpeedUp extends PowerUp {
  Cell p;
  void act() {
    if (isEaten()) 
      p.setSpeed(2 + p.getSpeed());
    }
  }

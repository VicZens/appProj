class Invincible extends PowerUp {
  Cell p;
  void act() {
  if (isEaten()) {
    p.setWeakness(null);
  }
}
}

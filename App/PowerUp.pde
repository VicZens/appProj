class PowerUp {
  private int points;
	private int xcor;
	private int ycor;

	//default constructor
	public PowerUp() {
		points = 0;
		xcor = 0;
		ycor = 0;
	}

	//creates a powerup
	public PowerUp(int p, int x, int y) {
		points = p;
		xcor = x;
		ycor = y;
	}

	//tests if white blood cell has eaten powerup
	public boolean isEaten(int x, int y) {
		if (x == xcor && y == ycor) {
			return true;
		} else {
			return false;
		}
	}

}

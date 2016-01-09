class Zombie extends Characters {
  public Zombie(int x, int y) {
    super(x, y);
  }
  void findDirection(Player x) {
    if (x.XCoord - XCoord >= 0) {  
      velX = 2;
    }
    if (XCoord - x.XCoord >= 0) {
      velX = -2;
    }
    if (YCoord - x.YCoord >= 0) {
      velY = -2;
    }
    if (x.YCoord - YCoord >= 0) {
      velY = 2;
    }
  }
}
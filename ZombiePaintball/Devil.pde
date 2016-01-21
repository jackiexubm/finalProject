class Devil extends Zombie {
  boolean canAttack;
  int nextAttack;
  public Devil(int x, int y, int health, int attack) {
    super(x, y, health, attack);
    canAttack = false;
    nextAttack = 0;
  }

  void attack(Characters x) {
    if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <=200 && !canAttack) {
      nextAttack = millis() + 500;
      canAttack = true;
      velX = 0;
      velY = 0;
    }
    if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 30 && canAttack && millis() >= nextAttack) {
      x.takeDamage(atk);
      nextAttack = millis() + 500;
      System.out.println(x.health);
    } else if (dist(x.XCoord, x.YCoord, XCoord, YCoord) > 30) {
      canAttack = false;
    }
  }
}
class Player extends Characters {
  String weapon;
  boolean canShoot;
  int nextShot = 0;

  public Player(int X, int Y, int health, int atk) {
    super(X, Y, health, atk) ;
    canShoot = false;
    nextShot = 0;
  }

  ArrayList<Bullet> shoot(Weapons x) {
    return x.createBullet(XCoord, YCoord, direction);
  }

  //void drawGun() {
  //  if (direction == 0) {
  //    line(XCoord, YCoord, XCoord, YCoord - 25);
  //  } else if (direction == 2) {
  //    line(XCoord, YCoord, XCoord + 25, YCoord);
  //  } else if (direction == 4) {
  //    line(XCoord, YCoord, XCoord, YCoord + 25);
  //  } else if (direction == 6) {
  //    line(XCoord, YCoord, XCoord - 25, YCoord);
  //  } else if (direction == 1) {
  //    line(XCoord, YCoord, XCoord + 18, YCoord - 18);
  //  } else if (direction == 3) {
  //    line(XCoord, YCoord, XCoord + 18, YCoord + 18);
  //  } else if (direction == 5) {
  //    line(XCoord, YCoord, XCoord - 18, YCoord + 18);
  //  } else if (direction == 7) {
  //    line(XCoord, YCoord, XCoord - 18, YCoord - 18);
  //  }
  //}

  boolean checkHealthPack(HealthPack h) {
    if (dist(XCoord, YCoord, h.xC, h.yC) <= 50 && health != maxHP) {
      return true;
    }
    return false;
  }

  void moveAwayFrom(Characters x, int units) {
    if (x.XCoord - XCoord >= 0) {
      XCoord -= units;
    }
    if (XCoord - x.XCoord >= 0) {
      XCoord += units;
    }
    if (YCoord - x.YCoord >= 0) {
      YCoord += units;
    }
    if (x.YCoord - YCoord >= 0) {
      YCoord -= units;
    }
  }

  //void chooseColor(int health, double maxHP) {
  //  if (health/maxHP <= 0.25) {
  //    fill(256, 0, 0);
  //  } else if (health/maxHP <= 0.5) {
  //    fill(256, 128, 0);
  //  } else if (health/maxHP <= 0.75) {
  //    fill(153, 256, 51);
  //  } else if (health/maxHP <= 1) {
  //    fill(0, 0, 256);
  //  }
  //}
}
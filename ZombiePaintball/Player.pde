class Player extends Characters implements Comparable {
  String weapon;
  boolean canShoot;
  int nextShot = 0;
  PImage p0;
  PImage p1;
  PImage p2;
  PImage p3;
  PImage p4;
  PImage p5;
  PImage p6;
  PImage p7;

  public Player(int X, int Y, int health, int atk) {
    super(X, Y, health, atk) ;
    canShoot = false;
    nextShot = 0;
    p0 = loadImage("player0.png");
    p1 = loadImage("player1.png");
    p2 = loadImage("player2.png");
    p3 = loadImage("player3.png");
    p4 = loadImage("player4.png");
    p5 = loadImage("player5.png");
    p6 = loadImage("player6.png");
    p7 = loadImage("player7.png");
  }

  void drawCharacters() {
    noTint();
    if (test.direction == 0) {
      image(p0, test.XCoord - 20, test.YCoord - 25, 40, 50);
    } else if (test.direction == 2) {
      image(p2, test.XCoord - 20, test.YCoord - 25, 45, 50);
    } else if (test.direction == 4) {
      image( p4, test.XCoord - 20, test.YCoord - 25, 40, 50);
    } else if (test.direction == 6) {
      image( p6, test.XCoord - 20, test.YCoord - 25, 40, 50);
    } else if (test.direction == 1) {
      image( p1, test.XCoord - 20, test.YCoord - 25, 47, 50);
    } else if (test.direction == 3) {
      image( p3, test.XCoord - 20, test.YCoord - 25, 30, 50);
    } else if (test.direction == 5) {
      image( p5, test.XCoord - 20, test.YCoord - 25, 45, 50);
    } else if (test.direction == 7) {
      image( p7, test.XCoord - 20, test.YCoord - 25, 30, 50);
    }
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
  
  void knockBack(Bullet b, int units){
        if (b.XCoord - XCoord >= 0) {
      XCoord -= units;
    }
    if (XCoord - b.XCoord >= 0) {
      XCoord += units;
    }
    if (YCoord - b.YCoord >= 0) {
      YCoord += units;
    }
    if (b.YCoord - YCoord >= 0) {
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
class Devil extends Zombie implements Comparable{
  boolean canAttack;
  int nextAttack;
  int dmg;
  int bVel;
  ArrayList<Bullet> Projectiles;
  PImage d0;
  PImage d1;
  PImage d2;
  PImage d3;
  PImage d4;
  PImage d5;
  PImage d6;
  PImage d7;

  public Devil(int x, int y, int health, int attack) {
    super(x, y, health, attack);
    canAttack = false;
    nextAttack = 0;
    dmg = attack;
    bVel = 4;
    Projectiles = new ArrayList<Bullet>();
    d0 = loadImage("devil0.png");
    d1 = loadImage("devil1.png");
    d2 = loadImage("devil2.png");
    d3 = loadImage("devil3.png");
    d4 = loadImage("devil4.png");
    d5 = loadImage("devil5.png");
    d6 = loadImage("devil6.png");
    d7 = loadImage("devil7.png");
  }

  void drawCharacters() {
    noTint();
    if (direction == 0) {
      image(d0, XCoord - 27, YCoord - 30, 55, 60);
    } else if (direction == 2) {
      image(d2, XCoord - 30, YCoord - 32, 60, 65);
    } else if (direction == 4) {
      image(d4, XCoord - 27, YCoord - 30, 55, 60);
    } else if (direction == 6) {
      image(d6, XCoord - 27, YCoord - 30, 55, 60);
    } else if (direction == 1) {
      image(d1, XCoord - 30, YCoord - 32, 60, 65);
    } else if (direction == 3) {
      image(d3, XCoord - 27, YCoord - 30, 55, 60);
    } else if (direction == 5) {
      image(d5, XCoord - 27, YCoord - 30, 55, 60);
    } else if (direction == 7) {
      image(d7, XCoord - 27, YCoord - 32, 55, 65);
    }
  }

  void drawProjectiles() {
    for (int i = 0; i < Projectiles.size(); i++) {
      Projectiles.get(i).drawBullet();
      Projectiles.get(i).move();
    }
  }

  void attack(Characters x) {
    if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 250 && !canAttack) {
      nextAttack = millis() + 500;
      canAttack = true;
    }
    if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 250 && canAttack && millis() >= nextAttack) {
      Projectiles.add(fireProjectile(x));
      nextAttack = millis() + 300;
      System.out.println(x.health);
      System.out.println(1);
    } else if (dist(x.XCoord, x.YCoord, XCoord, YCoord) > 250) {
      canAttack = false;
    }
  }

  void findDirection(Characters x) {
    if ( dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 250 ) {
      velX = 0;
      velY = 0;
    } else {
      if (x.XCoord - XCoord <= 20 && XCoord - x.XCoord <= 20) {
        velX = 0;
      }
      if (x.YCoord - YCoord <= 20 && YCoord - x.YCoord <= 20) {
        velY = 0;
      }
      if (x.XCoord - XCoord > 20) {  
        velX = 1;
      }
      if (XCoord - x.XCoord > 20) {
        velX = -1;
      }
      if (YCoord - x.YCoord > 20) {
        velY = -1;
      }
      if (x.YCoord - YCoord > 20) {
        velY = 1;
      }
    }
  }

  void faceDirection(Characters x) {
    boolean faceUp = false;
    boolean faceDown= false;
    boolean faceLeft = false;
    boolean faceRight = false;
    if (x.XCoord - XCoord <= 40 && XCoord - x.XCoord < 40) {
      faceRight = false;
      faceLeft = false;
    }
    if (x.YCoord - YCoord <= 40 && YCoord - x.YCoord < 40) {
      faceUp = false;
      faceDown = false;
    }
    if (x.XCoord - XCoord > 40) {  
      faceRight = true;
      faceLeft = false;
    }
    if (XCoord - x.XCoord > 40) {
      faceLeft = true;
      faceRight = false;
    }
    if (YCoord - x.YCoord > 40) {
      faceUp = true;
      faceDown = false;
    }
    if (x.YCoord - YCoord > 40) {
      faceDown = true;
      faceUp = false;
    }
    if (faceUp && faceRight) {
      direction = 1;
    } else if (faceDown && faceRight) {
      direction = 3;
    } else if (faceDown && faceLeft) {
      direction = 5;
    } else if (faceUp && faceLeft) {
      direction = 7;
    } else if (faceUp) {
      direction = 0;
    } else if (faceRight) {
      direction = 2;
    } else if (faceDown) {
      direction = 4;
    } else if (faceLeft) {
      direction = 6;
    }
  }

  Bullet fireProjectile(Characters X) {
    float theta = atan2((X.YCoord - YCoord), (X.XCoord - XCoord));
    Bullet temp = new Bullet(XCoord, YCoord, bVel * cos(theta), bVel * sin(theta), 10., 0., 2);
    return temp;
  }

  void drawBullets(Wave enemy, Player x, DevilWave dWave) {
    for (int i = 0; i < Projectiles.size(); i++) {
      Projectiles.get(i).drawBullet();
      Projectiles.get(i).move();
      if (Projectiles.get(i).damage(enemy, x, dWave)) {
        Projectiles.remove(Projectiles.get(i));
      }
    }
  }
}
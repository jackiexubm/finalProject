class Devil extends Zombie {
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
    bVel = 2;
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


  void drawDevils() {
    fill(256, 0, 0);
    ellipse(XCoord, YCoord, 40, 40);
    noTint();
    if (direction == 0) {
      image(d0, XCoord - 20, YCoord - 25, 40, 50);
    } else if (direction == 2) {
      image(d2, XCoord - 20, YCoord - 25, 45, 50);
    } else if (direction == 4) {
      image(d4, XCoord - 20, YCoord - 25, 40, 50);
    } else if (direction == 6) {
      image(d6, XCoord - 20, YCoord - 25, 40, 50);
    } else if (direction == 1) {
      image(d1, XCoord - 20, YCoord - 25, 47, 50);
    } else if (direction == 3) {
      image(d3, XCoord - 20, YCoord - 25, 30, 50);
    } else if (direction == 5) {
      image(d5, XCoord - 20, YCoord - 25, 45, 50);
    } else if (direction == 7) {
      image(d7, XCoord - 20, YCoord - 25, 30, 50);
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
      velX = 0;
      velY = 0;
    }
    if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 250 && canAttack && millis() >= nextAttack) {
      Projectiles.add(fireProjectile(x));
      nextAttack = millis() + 300;
      System.out.println(x.health);
      System.out.println(1);
    } else if (dist(x.XCoord, x.YCoord, XCoord, YCoord) > 200) {
      canAttack = false;
    }
  }

  void findDirection(Characters x) {
    if (x.XCoord - XCoord <= 200 && XCoord - x.XCoord < 20) {
      velX = 0;
    }
    if (x.YCoord - YCoord <= 200 && YCoord - x.YCoord < 20) {
      velY = 0;
    }
    if (x.XCoord - XCoord > 200) {  
      velX = 1;
    }
    if (XCoord - x.XCoord > 200) {
      velX = -1;
    }
    if (YCoord - x.YCoord > 200) {
      velY = -1;
    }
    if (x.YCoord - YCoord > 200) {
      velY = 1;
    }
  }
  Bullet fireProjectile(Characters X) {
    float theta = atan2((X.YCoord - YCoord), (X.XCoord - XCoord));
    Bullet temp = new Bullet(XCoord + 0., YCoord + 0., bVel * cos(theta), bVel * sin(theta), 20., 0., 2);
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
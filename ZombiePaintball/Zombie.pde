class Zombie extends Characters implements Comparable{
  boolean canAttack;
  int nextAttack;
  PImage z0;
PImage z1;
PImage z2;
PImage z3;
PImage z4;
PImage z5;
PImage z6;
PImage z7;

  public Zombie(int x, int y, int health, int attack) {
    super(x, y, health, attack);
    canAttack = false;
    nextAttack = 0;
  z0 = loadImage("zombie0.png");
  z1 = loadImage("zombie1.png");
  z2 = loadImage("zombie2.png");
  z3 = loadImage("zombie3.png");
  z4 = loadImage("zombie4.png");
  z5 = loadImage("zombie5.png");
  z6 = loadImage("zombie6.png");
  z7 = loadImage("zombie7.png");
  }
  

  void findDirection(Characters x) {
    if (x.XCoord - XCoord < 20 && XCoord - x.XCoord < 20) {
      velX = 0;
    }
    if (x.YCoord - YCoord < 20 && YCoord - x.YCoord < 20) {
      velY = 0;
    }
    if (x.XCoord - XCoord >= 20) {  
      velX = 1;
    }
    if (XCoord - x.XCoord >= 20) {
      velX = -1;
    }
    if (YCoord - x.YCoord >= 20) {
      velY = -1;
    }
    if (x.YCoord - YCoord >= 20) {
      velY = 1;
    }
  }

  void attack(Characters x) {
    if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <=30 && !canAttack) {
      nextAttack = millis() + 250;
      canAttack = true;
    }
    if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 30 && canAttack && millis() >= nextAttack) {
      x.takeDamage(atk);
      nextAttack = millis() + 500;
      System.out.println(x.health);
    } else if (dist(x.XCoord, x.YCoord, XCoord, YCoord) > 30) {
      canAttack = false;
    }
  }

  //void drawCharacters() {
  //  chooseColor(health, maxHP);
  //  ellipse(XCoord, YCoord, 30, 30);
  //}
  
    void drawCharacters(){
      chooseColor(health,maxHP);
    if (direction == 0) {
      image(z0,XCoord - 20, YCoord - 25, 40, 50);
    } else if (direction == 2) {
      image(z2,XCoord - 20, YCoord - 25, 45, 50);
    } else if (direction == 4) {
      image(z4,XCoord - 20, YCoord - 25, 40, 50);
    } else if (direction == 6) {
      image(z6,XCoord - 20, YCoord - 25, 45, 50);
    } else if (direction == 1) {
      image(z1,XCoord - 20, YCoord - 25, 47, 50);
    } else if (direction == 3) {
      image(z3,XCoord - 20, YCoord - 25, 45, 50);
    } else if (direction == 5) {
      image(z5,XCoord - 20, YCoord - 25, 47, 50);
    } else if (direction == 7) {
      image(z7,XCoord - 20, YCoord - 25, 45, 50);
    } else{
      ellipse(XCoord,YCoord,10,10);
    }
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
  
  int compareTo(Object that){ 
    if(this == that){
      return 0;
    }
    Zombie other = (Zombie)that; 
    if(other.YCoord <= YCoord){
    return 1;
    }else{
    return -1;
    }
    
  }

  void chooseColor(int health, double originalHP) {
    if (health/maxHP < 0.25) {
      tint(256, 0, 30);
    } else if (health/maxHP < 0.5) {
      tint(256, 120, 0);
    } else if (health/originalHP < 0.75) {
      tint(256, 204, 0);
    } else if (health/originalHP <= 1) {
      tint(0, 256, 50);
    }
  }
}
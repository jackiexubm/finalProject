abstract class Characters implements Comparable{
  //variables
  int XCoord;
  int YCoord;
  int oriXCoord;
  int oriYCoord;
  int direction;
  int velX;
  int velY;
  int health;
  int atk;
  double maxHP;

  Characters(int x, int y, int health, int atk) {
    XCoord = x;
    YCoord = y;
    oriXCoord = x;
    oriYCoord = y;
    direction = 0;
    velX = 0;
    velY = 0;
    this.health = health;
    this.atk = atk;
    maxHP = health;
  }
  
  void reset(){
    health = (int)maxHP;
    XCoord = oriXCoord;
    YCoord = oriYCoord;
    direction = 0;
    velX = 0;
    velY = 0;
  }

  void move() {
    XCoord += velX;
    YCoord += velY;
    if (XCoord <= 0) {
      XCoord = 0;
    }
    if (XCoord >= width) {
      XCoord = width;
    }
    if (YCoord <= 0) {
      YCoord = 0;
    }
    if (YCoord >= height) {
      YCoord = height;
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

  void takeDamage(int dmg) {
    health -= dmg;
  }

    int compareTo(Object that) {
    if (this == that) {
      return 0;
    }
    Characters other = (Characters)that;
    if (other.YCoord <= YCoord) {
      return 1;
    } else {
      return -1;
    }
  }
  
  void changeDirection() {
    if (velX > 0 && velY < 0) {
      direction = 1;
    } else if (velX > 0 && velY > 0) {
      direction = 3;
    } else if (velX < 0 && velY > 0) {
      direction = 5;
    } else if (velX < 0 && velY < 0) {
      direction = 7;
    } else if (velY < 0) {
      direction = 0;
    } else if (velX > 0) {
      direction = 2;
    } else if (velY > 0) {
      direction = 4;
    } else if (velX < 0) {
      direction = 6;
    }
  }
}
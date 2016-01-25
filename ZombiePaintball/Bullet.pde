class Bullet {
  float XCoord;
  float YCoord;
  float velX;
  float velY;
  float dmg;
  float direction;
  int type;

  Bullet(float X, float Y, float velX, float velY, float dmg, float dir, int type) {
    XCoord = X;
    YCoord = Y;
    this.velX = velX;
    this.velY = velY;
    this.dmg = dmg;
    direction = dir;
    this.type = type;
  }

  void drawBullet() {
    if (type == 0) {
      fill(0);
      ellipse(XCoord, YCoord, 5, 5);
    } else if (type == 1) {
      fill(256, 200, 0);
      ellipse(XCoord, YCoord, 15, 15);
    } else if (type == 2) {
      fill(139, 0, 0);
      ellipse(XCoord, YCoord, 15, 15);
    }
  }

  boolean damage(Wave enemy, Player me, DevilWave dWave) {
    if (type == 0) {
      for (int i = 0; i < enemy.size; i++) {
        if (dist(enemy.wave.get(i).XCoord, enemy.wave.get(i).YCoord, XCoord, YCoord) <= 15) {
          knockback(enemy.wave.get(i), 8);
          enemy.wave.get(i).takeDamage((int)dmg);   
          return true;
        }
      }
      for (int i = 0; i < dWave.size; i ++){
      if (dist(dWave.wave.get(i).XCoord, dWave.wave.get(i).YCoord, XCoord, YCoord) <= 15) {
          knockback(dWave.wave.get(i), 8);
          dWave.wave.get(i).takeDamage((int)dmg);   
          return true;
      }
    }
  } else if (type == 1) {
      for (int i = 0; i < enemy.size; i++) {
        if (dist(enemy.wave.get(i).XCoord, enemy.wave.get(i).YCoord, XCoord, YCoord) <= 22.5) {          
          for (int i2 = 0; i2 < enemy.size; i2++) {
            if (dist(enemy.wave.get(i2).XCoord, enemy.wave.get(i2).YCoord, XCoord, YCoord) <= 100) {
              enemy.wave.get(i2).takeDamage((int)dmg);
            }
          }
          if (dist(me.XCoord, me.YCoord, XCoord, YCoord) <= 100) {
            me.takeDamage((int)dmg);
          }
          return true;
        }
      }
    } else if (type == 2) {
      if (dist(me.XCoord, me.YCoord, XCoord, YCoord) <= 15) {
        me.takeDamage((int)dmg);
        me.knockBack(this, 5);
        return true;
      }
    }
    return false;
  }
  void knockback(Zombie x, float units) {
    if (direction == 0) {
      x.YCoord -= units;
    } else if (direction == 2) {
      x.XCoord += units;
    } else if (direction == 4) {
      x.YCoord += units;
    } else if (direction == 6) {
      x.XCoord -= units;
    } else if (direction == 1) {
      x.XCoord += units;
      x.YCoord -= units;
    } else if (direction == 3) {
      x.XCoord += units;
      x.YCoord += units;
    } else if (direction == 5) {
      x.XCoord += units;
      x.YCoord += units;
    } else if (direction == 7) {
      x.XCoord += units;
      x.YCoord -= units;
    }
  }


  void move() {
    XCoord += velX;
    YCoord += velY;
  }
}
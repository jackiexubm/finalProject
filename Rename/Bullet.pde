class Bullet {
  int XCoord;
  int YCoord;
  int velX;
  int velY;
  int dmg;

  Bullet(int X, int Y, int velX, int velY, int dmg) {
    XCoord = X;
    YCoord = Y;
    this.velX = velX;
    this.velY = velY;
    this.dmg = dmg;
  }

  void drawBullet() {
    fill(0);
    ellipse(XCoord, YCoord, 5, 5);
  }
  
  boolean damage(Wave enemy){
    for(int i = 0; i < enemy.size; i++){
      if(dist(enemy.wave.get(i).XCoord,enemy.wave.get(i).YCoord,XCoord,YCoord) <= 15){
        knockback(enemy.wave.get(i),10);
        enemy.wave.get(i).takeDamage(dmg);   
        return true;
      }
    }
    return false;
  }
  void knockback(Zombie x, int units){
    if (x.XCoord - XCoord >= 0) {
      x.XCoord += units;
    }
    if (XCoord - x.XCoord >= 0) {
      x.XCoord -= units;
    }
    if (YCoord - x.YCoord >= 0) {
      x.YCoord -= units;
    }
    if (x.YCoord - YCoord >= 0) {
      x.YCoord += units;
    }
  }
 
  void move() {
    XCoord += velX;
    YCoord += velY;
  }
}
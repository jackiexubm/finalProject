class Bullet {
  int XCoord;
  int YCoord;
  int velX;
  int velY;
  int dmg;
  int direction;

  Bullet(int X, int Y, int velX, int velY, int dmg, int dir) {
    XCoord = X;
    YCoord = Y;
    this.velX = velX;
    this.velY = velY;
    this.dmg = dmg;
    direction = dir;
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
    if (direction == 0){
      x.YCoord -= units;
    }else if (direction == 2){
      x.XCoord += units;
    }else if (direction == 4){
      x.YCoord += units;
    }else if (direction == 6){
      x.XCoord -= units;
    }else if (direction == 1){
      x.XCoord += units;
      x.YCoord -= units;
    }else if (direction == 3){
      x.XCoord += units;
      x.YCoord += units;
    }else if (direction == 5){
      x.XCoord += units;
      x.YCoord += units;
    }else if (direction == 7){
      x.XCoord += units;
      x.YCoord -= units;
    }
  }
 
  void move() {
    XCoord += velX;
    YCoord += velY;
  }
}
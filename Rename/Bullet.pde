class Bullet {
  int XCoord;
  int YCoord;
  int velX;
  int velY;
  int dmg;

  Bullet(int X, int Y, int velX, int velY) {
    XCoord = X;
    YCoord = Y;
    this.velX = velX;
    this.velY = velY;
  }

  void drawBullet() {
    fill(0);
    ellipse(XCoord, YCoord, 5, 5);
  }
  
  void move() {
    XCoord += velX;
    YCoord += velY;
  }
}
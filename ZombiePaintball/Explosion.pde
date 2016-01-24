class Explosion {
  float XCoord;
  float YCoord;
  PImage boom;
  
  
  Explosion(float X, float Y) {
    XCoord = X;
    YCoord = Y;
    boom = loadImage("explosion.png");
  }

  void drawExplosion(int shade) {
      tint(256,shade);
      image(boom, XCoord - 60, YCoord + 40, 120, 80);
    }
  }
class Explosion{
  float XCoord;
  float YCoord;
  PImage boom;
  
  Explosion(float X, float Y){
    XCoord = X;
    YCoord = Y;
    boom = loadImage("explosion.png");
  }
  
  void drawExplosion(){
  for(int i = 0; i < 16; i ++){
      tint(256,256 - 16 * i);
      image(boom,XCoord - 60,YCoord + 40, 120 , 80);
    }
  }
}
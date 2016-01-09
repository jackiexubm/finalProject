abstract class Characters {
  //variables
  int XCoord;
  int YCoord;
  int direction;
  int velX;
  int velY;

  //constructors
  Characters(int x, int y) {
    XCoord = x;
    YCoord = y;
    direction = 0;
    velX = 0;
    velY = 0;
  }
  
  void move(){
  XCoord += velX;
  YCoord += velY;
  }

  //methods


  void drawCharacters() {
    ellipse(XCoord, YCoord, 30, 30);
    fill(256, 256, 256);
    
  }
}
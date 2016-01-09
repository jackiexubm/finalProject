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

  void move() {
    XCoord += velX;
    YCoord += velY;
  }

  //methods

  void drawCharacters() {
    ellipse(XCoord, YCoord, 30, 30);
    fill(256, 256, 256);
  }
  
  void changeDirection(){
    if(velX > 0 && velY > 0){
    direction = 1;
    }else if(velX > 0 && velY < 0){
    direction = 3;
    }else if(velX < 0 && velY < 0){
    direction = 5;
    }else if(velX < 0 && velY > 0){
    direction = 7;
    }else if(velY < 0){
    direction = 0;
    }else if(velX > 0){
    direction = 2;
    }else if(velY > 0){
    direction = 4;
    }else if(velX < 0){
    direction = 6;
    }
  }
  
}
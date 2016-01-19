abstract class Characters {
  //variables
  int XCoord;
  int YCoord;
  int direction;
  int velX;
  int velY;
  int health;
  int atk;
  double maxHP;

  Characters(int x, int y, int health, int atk) {
    XCoord = x;
    YCoord = y;
    direction = 0;
    velX = 0;
    velY = 0;
    this.health = health;
    this.atk = atk;
    maxHP = health;
  }

  void move() {
    XCoord += velX;
    YCoord += velY;
    if(XCoord <= 0){
      XCoord = 0;
    }
    if(XCoord >= width){
      XCoord = width;
    }
    if(YCoord <= 0){
     YCoord = 0; 
    }
    if(YCoord >= height){
     YCoord = height; 
    }
  }

  void takeDamage(int dmg){
   health -= dmg; 
  }

  void changeDirection(){
    if(velX > 0 && velY < 0){
    direction = 1;
    }else if(velX > 0 && velY > 0){
    direction = 3;
    }else if(velX < 0 && velY > 0){
    direction = 5;
    }else if(velX < 0 && velY < 0){
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
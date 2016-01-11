class Zombie extends Characters {
  boolean canAttack;
  int nextAttack;
  public Zombie(int x, int y, int health, int attack) {
    super(x, y, health, attack);
   canAttack = false;
   nextAttack = 0;
  }
  void findDirection(Player x) {
     if (x.XCoord - XCoord < 10 && XCoord - x.XCoord < 10){
      velX = 0;
    }
    if (x.YCoord - YCoord < 10 && YCoord - x.YCoord < 10){
      velY = 0;
    }
    if (x.XCoord - XCoord >= 10) {  
      velX = 2;
    }
    if (XCoord - x.XCoord >= 10) {
      velX = -2;
    }
    if (YCoord - x.YCoord >= 10) {
      velY = -2;
    }
    if (x.YCoord - YCoord >= 10) {
      velY = 2;
    }
   
  }
  void attack(Characters x){
   if(dist(x.XCoord,x.YCoord,XCoord,YCoord) <=15 && !canAttack){
     nextAttack = millis() + 500;
     canAttack = true;
     System.out.println(1);
   }
   if(dist(x.XCoord,x.YCoord,XCoord,YCoord) <= 15 && canAttack && millis() >= nextAttack){
     x.takeDamage(atk);
      nextAttack = millis() + 500;
     System.out.println(x.health);
     System.out.println(2);
   }
   else if(dist(x.XCoord,x.YCoord,XCoord,YCoord) > 15){
     canAttack = false;
     System.out.println(3);
   }
  }
  void drawCharacters() {
    chooseColor(health, originalHP);
    ellipse(XCoord, YCoord, 30, 30);
  }
  
  void chooseColor(int health, double originalHP){
      if(health/originalHP < 0.25){
      fill(256, 0, 0);
    }
    else if(health/originalHP < 0.5){
      fill(256, 128, 0);
    }
    else if(health/originalHP < 0.75){
      fill(153, 256, 51);
    }
    else if(health/originalHP <= 1){
      fill(0, 0,256);
    }
  }
}
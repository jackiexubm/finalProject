class Zombie extends Characters {
  boolean canAttack;
  int nextAttack;
  public Zombie(int x, int y, int health, int attack) {
    super(x, y, health, attack);
    canAttack = false;
    nextAttack = 0;
  }
  void makeDead(){
   if(health <= 0){
    atk = 0; 
   }
  }
  void findDirection(Player x) {
     if (x.XCoord - XCoord < 20 && XCoord - x.XCoord < 20){
      velX = 0;
    }
    if (x.YCoord - YCoord < 20 && YCoord - x.YCoord < 20){
      velY = 0;
    }
    if (x.XCoord - XCoord >= 20) {  
      velX = 1;
    }
    if (XCoord - x.XCoord >= 20) {
      velX = -1;
    }
    if (YCoord - x.YCoord >= 20) {
      velY = -1;
    }
    if (x.YCoord - YCoord >= 20) {
      velY = 1;
    }
   
  }

  void attack(Characters x){
   if(dist(x.XCoord,x.YCoord,XCoord,YCoord) <=30 && !canAttack){
     nextAttack = millis() + 500;
     canAttack = true;
   }
   if(dist(x.XCoord,x.YCoord,XCoord,YCoord) <= 30 && canAttack && millis() >= nextAttack){
     x.takeDamage(atk);
      nextAttack = millis() + 500;
     System.out.println(x.health);
   }
   else if(dist(x.XCoord,x.YCoord,XCoord,YCoord) > 30){
     canAttack = false;
   }

  }

  void drawCharacters() {
    if(health >= 0){
    chooseColor(health, maxHP);
    ellipse(XCoord, YCoord, 30, 30);}
  }

  void chooseColor(int health, double originalHP) {
    if (health/maxHP < 0.25) {
      fill(256, 0, 0);
    } else if (health/maxHP < 0.5) {
      fill(256, 128, 0);
    } else if (health/originalHP < 0.75) {
      fill(153, 256, 51);
    } else if (health/originalHP <= 1) {
      fill(0, 0, 256);
    }
  }
}
//class Devil extends Zombie {
//  boolean canAttack;
//  int nextAttack;
//  int dmg;
//  public Devil(int x, int y, int health, int attack) {
//    super(x, y, health, attack);
//    canAttack = false;
//    nextAttack = 0;
//    dmg = attack;
//  }

//  void attack(Characters x) {
//   if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 200 && !canAttack) {
//     nextAttack = millis() + 1000;
//     canAttack = true;
//     velX = 0;
//     velY = 0;
//   }
//   if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 200 && canAttack && millis() >= nextAttack) {
//     fireProjectile(x);
//     nextAttack = millis() + 300;
//     System.out.println(x.health);
//   } else if (dist(x.XCoord, x.YCoord, XCoord, YCoord) > 30) {
//     canAttack = false;
//   }
//  }
  
//  int findDirection(Characters x){
//   if (x.XCoord - XCoord >= 20) {  
//     velX = 1;
//   }
//   if (XCoord - x.XCoord >= 20) {
//     velX = -1;
//   }
//   if (YCoord - x.YCoord >= 20) {
//     velY = -1;
//   }
//   if (x.YCoord - YCoord >= 20) {
//     velY = 1;
//   }
      
//  }
//  Bullet fireProjectile(int X, int Y, int direction) {
//   if (direction == 0) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, 0, -10, dmg, direction); 
//     return temp;
//   } else if (direction == 2) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, 10, 0, dmg, direction); 
//     return temp;
//   } else if (direction ==4) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, 0, 10, dmg, direction); 
//     return temp;
//   } else if (direction ==6) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, -10, 0, dmg, direction); 
//     return temp;
//   } else if (direction ==1) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, 10, -10, dmg, direction); 
//     return temp;
//   } else if (direction ==3) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, 10, 10, dmg, direction); 
//     return temp;
//   } else if (direction ==5) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, -10, 10, dmg, direction); 
//     return temp;
//   } else if (direction ==7) {
//     nextShot = millis() + 300;
//     Bullet temp = new Bullet(X, Y, -10, -10, dmg, direction); 
//     return temp;
//   } else {
//     Bullet temp = new Bullet(X, Y, -10, -10, dmg, direction); 
//     return temp;
//   }
//  }
//}
//class Devil extends Zombie {
// boolean canAttack;
// int nextAttack;
// int dmg;
// int bVel;

// ArrayList<Bullet> projs;
// public Devil(int x, int y, int health, int attack) {
//   super(x, y, health, attack);
//   canAttack = false;
//   nextAttack = 0;
//   dmg = attack;
//   projs = new ArrayList<Bullet>();
//   bVel = 2;

// }

// void attack(Characters x) {
//  if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 200 && !canAttack) {
//    nextAttack = millis() + 1000;
//    canAttack = true;
//    velX = 0;
//    velY = 0;
//  }
//  if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 200 && canAttack && millis() >= nextAttack) {
//    projs.add(fireProjectile(x));
//    nextAttack = millis() + 300;
//    System.out.println(x.health);
//  } else if (dist(x.XCoord, x.YCoord, XCoord, YCoord) > 30) {
//    canAttack = false;
//  }
// }

// void findDirection(Characters x){
//  if (x.XCoord - XCoord >= 20) {  
//    velX = 1;
//  }
//  if (XCoord - x.XCoord >= 20) {
//    velX = -1;
//  }
//  if (YCoord - x.YCoord >= 20) {
//    velY = -1;
//  }
//  if (x.YCoord - YCoord >= 20) {
//    velY = 1;
//  }
// }
// Bullet fireProjectile(Characters X) {
//  float theta = atan((X.YCoord - YCoord)/(X.XCoord - XCoord));
//  Bullet temp = new Bullet(XCoord, YCoord, bVel * cos(theta), bVel * sin(theta), 10, 0);
//  return temp;
// }
//}
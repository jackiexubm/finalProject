class Devil extends Zombie {
boolean canAttack;
int nextAttack;
int dmg;
int bVel;

public Devil(int x, int y, int health, int attack) {
  super(x, y, health, attack);
  canAttack = false;
  nextAttack = 0;
  dmg = attack;
  bVel = 2;

}

void drawDevil(){
  fill(256,0,0);
  ellipse(XCoord, YCoord, 40,40);
}

void drawProjectiles(ArrayList<Bullet> arr){
 for(int i = 0; i < arr.size(); i++){
  arr.get(i).drawBullet();
  arr.get(i).move();
 }
}

void attack(Characters x, ArrayList<Bullet> arr) {
 if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 200 && !canAttack) {
   nextAttack = millis() + 1000;
   canAttack = true;
   velX = 0;
   velY = 0;
 }
 if (dist(x.XCoord, x.YCoord, XCoord, YCoord) <= 200 && canAttack && millis() >= nextAttack) {
   arr.add(fireProjectile(x));
   nextAttack = millis() + 300;
   System.out.println(x.health);
   System.out.println(1);
 } else if (dist(x.XCoord, x.YCoord, XCoord, YCoord) > 200) {
   canAttack = false;
 }
}

void findDirection(Characters x){
 if (x.XCoord - XCoord <= 200 && XCoord - x.XCoord < 200) {
    velX = 0;
  }
  if (x.YCoord - YCoord <= 200 && YCoord - x.YCoord < 200) {
    velY = 0;
  }
 if (x.XCoord - XCoord > 200) {  
   velX = 1;
 }
 if (XCoord - x.XCoord > 200) {
   velX = -1;
 }
 if (YCoord - x.YCoord > 200) {
   velY = -1;
 }
 if (x.YCoord - YCoord > 200) {
   velY = 1;
 }
}
Bullet fireProjectile(Characters X) {
 float theta = atan2((X.YCoord - YCoord) ,(X.XCoord - XCoord));
 Bullet temp = new Bullet(XCoord + 0., YCoord + 0., bVel * cos(theta), bVel * sin(theta), 10., 0., 2);
 return temp;
}
}
class Pistol extends Weapons {

  Pistol(int dmg, int spd) {
    super(30, spd);
    name = "pistol";
  }

  Bullet createBullet(int X, int Y, int direction) {
      if (direction == 0) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, 0, -10, dmg); 
        return temp;
      } else if (direction == 2) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, 10, 0,dmg); 
        return temp;
      } else if (direction ==4) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, 0, 10,dmg); 
        return temp;
      } else if (direction ==6) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, -10, 0, dmg); 
        return temp;
      } else if (direction ==1) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, 10, -10, dmg); 
        return temp;
      } else if (direction ==3) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, 10, 10, dmg); 
        return temp;
      } else if (direction ==5) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, -10, 10, dmg); 
        return temp;
      } else if (direction ==7) {
        nextShot = millis() + 300;
        Bullet temp = new Bullet(X, Y, -10, -10, dmg); 
        return temp;
      } else{
      Bullet temp = new Bullet(X, Y, -10, -10, dmg); 
        return temp;
      }
  }
}
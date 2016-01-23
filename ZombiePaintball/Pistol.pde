class Pistol extends Weapons {
  ArrayList<Bullet> ret = new ArrayList<Bullet>();
  Pistol(int dmg, int spd) {
    super(30, spd);
    name = "pistol";
  }

  ArrayList<Bullet> createBullet(int X, int Y, int direction) {
    for(int i = ret.size() - 1; i > 0; i--){
      ret.remove(i);
    }
    if (direction == 0) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, 0, -10, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction == 2) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, 10, 0, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==4) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, 0, 10, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==6) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, -10, 0, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==1) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, 7, -7, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==3) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, 7, 7, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==5) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, -7, 7, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==7) {
      nextShot = millis() + 300;
      Bullet temp = new Bullet(X, Y, -7, -7, dmg, direction); 
      ret.add(temp);
      return ret;
    } else {
      Bullet temp = new Bullet(X, Y, -7, -7, dmg, direction); 
      ret.add(temp);
      return ret;
    }
  }
}
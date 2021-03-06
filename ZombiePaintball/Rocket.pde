class Rocket extends Weapons {
  ArrayList<Bullet> ret = new ArrayList<Bullet>();
  Rocket(int dmg, int spd) {
    super(dmg, spd);
    name = "pistol";
  }

  ArrayList<Bullet> createBullet(int X, int Y, int direction) {
    ret.removeAll(ret);
    if (direction == 0) {
      Bullet temp = new Bullet(X + 13, Y - 15, 0, -10, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else if (direction == 2) {
      Bullet temp = new Bullet(X + 17, Y + 3, 10, 0, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else if (direction ==4) {
      Bullet temp = new Bullet(X - 10, Y + 10, 0, 10, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else if (direction ==6) {
      Bullet temp = new Bullet(X - 8, Y - 10, -10, 0, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else if (direction ==1) {
      Bullet temp = new Bullet(X + 8, Y + 3, 7, -7, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else if (direction ==3) {
      Bullet temp = new Bullet(X - 3, Y + 5, 7, 7, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else if (direction ==5) {
      Bullet temp = new Bullet(X - 5, Y + 5, -7, 7, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else if (direction ==7) {
      Bullet temp = new Bullet(X, Y - 3, -7, -7, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    } else {
      Bullet temp = new Bullet(X, Y, -7, -7, dmg, direction, 1); 
      ret.add(temp);
      return ret;
    }
  }
}
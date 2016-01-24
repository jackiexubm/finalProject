class Rifle extends Weapons {
  ArrayList<Bullet> ret = new ArrayList<Bullet>();
  Rifle(int dmg, int spd) {
    super(dmg, spd);
    name = "pistol";
  }

  ArrayList<Bullet> createBullet(int X, int Y, int direction) {
    ret.removeAll(ret);
    if (direction == 0) {
      float shift = (float)Math.random() * 3.4 - 1.7;
      Bullet temp = new Bullet(X + 13, Y - 15, shift, -10, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else if (direction == 2) {
      float shift = (float)Math.random() * 3.4 - 1.7;
      Bullet temp = new Bullet(X + 17, Y + 3, 10, shift, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else if (direction ==4) {
      float shift = (float)Math.random() * 3.4 - 1.7;
      Bullet temp = new Bullet(X - 10, Y + 10, shift, 10, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else if (direction ==6) {
      float shift = (float)Math.random() * 3.4 - 1.7;
      Bullet temp = new Bullet(X - 8, Y - 10, -10, shift, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else if (direction ==1) {
      float shift = (float)Math.random() * 2.8 - 1.9;
      Bullet temp = new Bullet(X + 8, Y + 3, 7 + shift, -7, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else if (direction ==3) {
      float shift = (float)Math.random() * 2.8 - 1.9;
      Bullet temp = new Bullet(X - 3, Y + 5, 7 + shift, 7, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else if (direction ==5) {
      float shift = (float)Math.random() * 2.8 - 1.9;
      Bullet temp = new Bullet(X - 5, Y + 5, -7 + shift, 7, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else if (direction ==7) {
      float shift = (float)Math.random() * 2.8 - 1.9;
      Bullet temp = new Bullet(X, Y - 3, -7 + shift, -7, dmg, direction,0); 
      ret.add(temp);
      return ret;
    } else {
      Bullet temp = new Bullet(X, Y, -7, -7, dmg, direction,0); 
      ret.add(temp);
      return ret;
    }
  }
}
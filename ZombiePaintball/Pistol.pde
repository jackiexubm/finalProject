class Pistol extends Weapons {
  ArrayList<Bullet> ret = new ArrayList<Bullet>();
  Pistol(int dmg, int spd) {
    super(dmg, spd);
    name = "pistol";
  }

  ArrayList<Bullet> createBullet(int X, int Y, int direction) {
    for(int i = ret.size() - 1; i > 0; i--){
      ret.remove(i);
    }
    if (direction == 0) {
       
      Bullet temp = new Bullet(X, Y, 0, -10, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction == 2) {
       
      Bullet temp = new Bullet(X, Y, 10, 0, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==4) {
       
      Bullet temp = new Bullet(X, Y, 0, 10, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==6) {
       
      Bullet temp = new Bullet(X, Y, -10, 0, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==1) {
       
      Bullet temp = new Bullet(X, Y, 7, -7, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==3) {
       
      Bullet temp = new Bullet(X, Y, 7, 7, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==5) {
      Bullet temp = new Bullet(X, Y, -7, 7, dmg, direction); 
      ret.add(temp);
      return ret;
    } else if (direction ==7) {
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
class Shotgun extends Weapons {
  ArrayList<Bullet> ret = new ArrayList<Bullet>();
  Shotgun(int dmg, int spd) {
    super(dmg, spd);
    name = "shotgun";
  }

  ArrayList<Bullet> createBullet(int X, int Y, int direction) {
    ret.removeAll(ret);
    if (direction == 0) {
      Bullet temp1 = new Bullet(X + 13, Y - 15, -3, -9.5, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X + 13, Y - 15, -2, -9.8, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X + 13, Y - 15, -1, -9.95, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X + 13, Y - 15, 0, -10, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X + 13, Y - 15, 1, -9.95, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X + 13, Y - 15, 2, -9.8, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X + 13, Y - 15, 3, -9.5, dmg, direction, 0); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction == 2) {
      Bullet temp1 = new Bullet(X + 17, Y + 3, 9.5, 3, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X + 17, Y + 3, 9.8, 2, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X + 17, Y + 3, 9.95, 1, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X + 17, Y + 3, 10, 0, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X + 17, Y + 3, 9.95, -1, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X + 17, Y + 3, 9.8, -2, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X + 17, Y + 3, 9.5, -3, dmg, direction, 0); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==4) {
      Bullet temp1 = new Bullet(X - 10, Y + 10, -3, 9.5, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X - 10, Y + 10, -2, 9.8, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X - 10, Y + 10, -1, 9.95, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X - 10, Y + 10, 0, 10, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X - 10, Y + 10, 1, 9.95, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X - 10, Y + 10, 2, 9.8, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X - 10, Y + 10, 3, 9.5, dmg, direction, 0); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==6) {
      Bullet temp1 = new Bullet(X - 8, Y - 10, -9.5, 3, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X - 8, Y - 10, -9.8, 2, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X - 8, Y - 10, -9.95, 1, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X - 8, Y - 10, -10, 0, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X - 8, Y - 10, -9.95, -1, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X - 8, Y - 10, -9.8, -2, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X - 8, Y - 10, -9.5, -3, dmg, direction, 0);  
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==1) {
      Bullet temp1 = new Bullet(X + 8, Y + 3, 4.7, -8.8, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X + 8, Y + 3, 5.65, -8.25, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X + 8, Y + 3, 6.4, -7.7, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X + 8, Y + 3, 7.1, -7.1, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X + 8, Y + 3, 7.7, -6.4, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X + 8, Y + 3, 8.25, -5.65, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X + 8, Y + 3, 8.8, -4.7, dmg, direction, 0); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==3) {
      Bullet temp1 = new Bullet(X - 3, Y + 5, 4.7, 8.8, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X - 3, Y + 5, 5.65, 8.25, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X - 3, Y + 5, 6.4, 7.7, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X - 3, Y + 5, 7.1, 7.1, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X - 3, Y + 5, 7.7, 6.4, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X - 3, Y + 5, 8.25, 5.65, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X - 3, Y + 5, 8.8, 4.7, dmg, direction, 0); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==5) {
      Bullet temp1 = new Bullet(X - 5, Y + 5, -4.7, 8.8, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X - 5, Y + 5, -5.65, 8.25, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X - 5, Y + 5, -6.4, 7.7, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X - 5, Y + 5, -7.1, 7.1, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X - 5, Y + 5, -7.7, 6.4, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X - 5, Y + 5, -8.25, 5.65, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X - 5, Y + 5, -8.8, 4.7, dmg, direction, 0); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==7) {
      Bullet temp1 = new Bullet(X, Y - 3, -4.7, -8.8, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X, Y - 3, -5.65, -8.25, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X, Y - 3, -6.4, -7.7, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X, Y - 3, -7.1, -7.1, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X, Y - 3, -7.7, -6.4, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X, Y - 3, -8.25, -5.65, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X, Y - 3, -8.8, -4.7, dmg, direction, 0);  
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else {
      Bullet temp1 = new Bullet(X, Y, -3, -9.5, dmg, direction, 0); 
      Bullet temp2 = new Bullet(X, Y, -2, -9.8, dmg, direction, 0); 
      Bullet temp3 = new Bullet(X, Y, -1, -9.95, dmg, direction, 0); 
      Bullet temp4 = new Bullet(X, Y, 0, -10, dmg, direction, 0); 
      Bullet temp5 = new Bullet(X, Y, 1, -9.95, dmg, direction, 0); 
      Bullet temp6 = new Bullet(X, Y, 2, -9.8, dmg, direction, 0); 
      Bullet temp7 = new Bullet(X, Y, 3, -9.5, dmg, direction, 0); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    }
  }
}
class Shotgun extends Weapons {
  ArrayList<Bullet> ret = new ArrayList<Bullet>();
 Shotgun(int dmg, int spd) {
   super(dmg, spd);
   name = "shotgun";
 }

  ArrayList<Bullet> createBullet(int X, int Y, int direction) {
    for(int i = ret.size() - 1; i > 0; i--){
      ret.remove(i);
    }
    if (direction == 0) {
      Bullet temp1 = new Bullet(X, Y, -3, -9.5, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, -2, -9.8, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, -1, -9.95, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, 0, -10, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, 1, -9.95, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, 2, -9.8, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, 3, -9.5, dmg, direction); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction == 2) {
      Bullet temp1 = new Bullet(X, Y, 9.5, 3, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, 9.8, 2, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, 9.95, 1, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, 10, 0, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, 9.95, -1, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, 9.8, -2, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, 9.5, -3, dmg, direction); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==4) {
      Bullet temp1 = new Bullet(X, Y, -3, 9.5, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, -2, 9.8, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, -1, 9.95, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, 0, 10, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, 1, 9.95, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, 2, 9.8, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, 3, 9.5, dmg, direction); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==6) {
      Bullet temp1 = new Bullet(X, Y, -9.5, 3, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, -9.8, 2, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, -9.95, 1, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, -10, 0, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, -9.95, -1, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, -9.8, -2, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, -9.5, -3, dmg, direction);  
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==1) {
      Bullet temp1 = new Bullet(X, Y, 4.7, -8.8, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, 5.65, -8.25, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, 6.4, -7.7, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, 7.1, -7.1, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, 7.7, -6.4, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, 8.25, -5.65, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, 8.8, -4.7, dmg, direction); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==3) {
      Bullet temp1 = new Bullet(X, Y, 4.7, 8.8, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, 5.65, 8.25, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, 6.4, 7.7, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, 7.1, 7.1, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, 7.7, 6.4, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, 8.25, 5.65, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, 8.8, 4.7, dmg, direction); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==5) {
      Bullet temp1 = new Bullet(X, Y, -4.7, 8.8, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, -5.65, 8.25, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, -6.4, 7.7, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, -7.1, 7.1, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, -7.7, 6.4, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, -8.25, 5.65, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, -8.8, 4.7, dmg, direction); 
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else if (direction ==7) {
      Bullet temp1 = new Bullet(X, Y, -4.7, -8.8, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, -5.65, -8.25, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, -6.4, -7.7, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, -7.1, -7.1, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, -7.7, -6.4, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, -8.25, -5.65, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, -8.8, -4.7, dmg, direction);  
      ret.add(temp1);
      ret.add(temp2);
      ret.add(temp3);
      ret.add(temp4);
      ret.add(temp5);
      ret.add(temp6);
      ret.add(temp7);
      return ret;
    } else {
      Bullet temp1 = new Bullet(X, Y, -3, -9.5, dmg, direction); 
      Bullet temp2 = new Bullet(X, Y, -2, -9.8, dmg, direction); 
      Bullet temp3 = new Bullet(X, Y, -1, -9.95, dmg, direction); 
      Bullet temp4 = new Bullet(X, Y, 0, -10, dmg, direction); 
      Bullet temp5 = new Bullet(X, Y, 1, -9.95, dmg, direction); 
      Bullet temp6 = new Bullet(X, Y, 2, -9.8, dmg, direction); 
      Bullet temp7 = new Bullet(X, Y, 3, -9.5, dmg, direction); 
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
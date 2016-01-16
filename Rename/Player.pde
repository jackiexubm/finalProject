class Player extends Characters {
  String weapon;
  boolean canShoot;
  int nextShot = 0;
  public Player(int X, int Y, int health, int atk) {
    super(X, Y, health, atk) ;
    canShoot = false;
    nextShot = 0;
  }
  void drawCharacters() {
    chooseColor(health, maxHP);
    ellipse(XCoord, YCoord, 30, 30);
  }
  
  void giveWeapon(Weapons x){
    atk = x.dmg;
    weapon = x.name;
  }
  Bullet shoot(Weapons x){
  return x.createBullet(XCoord,YCoord,direction);
  }
  
  //void shoot(Characters x, boolean shooting){
  //if(shooting && millis() >= nextShot){
  //  if(direction == 0 && x.XCoord <= XCoord + 30 && x.XCoord >= XCoord - 30 && x.YCoord <= YCoord){
  //    x.takeDamage(atk);
  //  }
  //    else if(direction == 2 && x.XCoord >= XCoord && x.YCoord >= YCoord - 30 && x.YCoord <= YCoord + 30){
  //    x.takeDamage(atk);
  //  }
  //    else if(direction == 4 && x.XCoord <= XCoord + 30 && x.XCoord >= XCoord -30 && x.YCoord >= YCoord){
  //    x.takeDamage(atk);
  //  }
  //  else if(direction == 6 && x.XCoord <= XCoord && x.YCoord >= YCoord - 30 && x.YCoord <= YCoord + 30){
  //    x.takeDamage(atk);
  //  }
  //  nextShot = millis() + 1000;
  //  System.out.println(x.health);
  //}
  //}
  
  void chooseColor(int health, double maxHP){
      if(health/maxHP <= 0.25){
      fill(256, 0, 0);
    }
    else if(health/maxHP <= 0.5){
      fill(256, 128, 0);
    }
    else if(health/maxHP <= 0.75){
      fill(153, 256, 51);
    }
    else if(health/maxHP <= 1){
      fill(0, 0, 256);
    }
  }
 
}
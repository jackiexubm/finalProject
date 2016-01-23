abstract class Weapons {
  int dmg;
  int spd;
  int ammo;
  int ammoSize;   
  String name;

  Weapons(int dmg, int spd) {
    this.dmg = dmg;
    this.spd = spd;
  }

  abstract ArrayList<Bullet> createBullet(int X, int Y, int direction);
}
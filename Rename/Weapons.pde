abstract class Weapons{
  int dmg;
  int spd;
  int ammo;
  
  Weapons(int dmg,int spd){
    this.dmg = dmg;
    this.spd = spd;
  }

  abstract void shoot(Player x);

}
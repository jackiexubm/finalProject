class Pistol extends Weapons{
  
Pistol(int dmg, int spd){
  super(dmg,spd);
  name = "pistol";
}
  
  void shot(int X, int Y, int velX, int velY){
    Bullet.createProj();
  }
}
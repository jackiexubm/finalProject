class HealthPack{
  int health;
  int timer;
  int xC;
  int yC;
  
  HealthPack(int xC, int yC, int size, int health, int tS, int timer){
    rectMode(CENTER);
    fill(256);
    rect(xC, yC, size, size);
    this.health = health;
    this.timer = timer + tS;
    this.xC = xC;
    this.yC = yC;
  }
  
  void replenishHealth(Characters x){
   if(x.health >= x.maxHP - health){
    x.health = (int)x.maxHP; 
   }
   else{
    x.health += health; 
   }
  }
  
}
class HealthPack{
  int health;
  int time;
  int xC;
  int yC;
  int size;
  
  HealthPack(int xC, int yC, int size, int health, int tS, int timer){
    rectMode(CENTER);
    fill(256);
    rect(xC, yC, size, size);
    this.health = health;
    time = timer + tS;
    this.xC = xC;
    this.yC = yC;
    this.size = size;
  }
  
  void drawPack(){
   rectMode(CENTER);
    fill(256);
    rect(xC, yC, size, size);
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
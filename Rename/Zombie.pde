class Zombie extends Characters{
  public Zombie(int x, int y){
    super(x,y);
    speed = 2;
  }
  void move(Player x){
   if(x.XCoord - XCoord > 15) {  
     moveEast();
     direction = 2;
   }
   if(XCoord - x.XCoord > 15){
    moveWest();
    direction = 6;
   }
    if(YCoord - x.YCoord > 15){
    moveNorth();
    direction =0;
   }
    if(x.YCoord - YCoord > 15){
    moveSouth();
    direction = 4;
   }
   
  }
}
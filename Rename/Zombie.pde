class Zombie extends Characters{
  public Zombie(int x, int y){
    super(x,y);
  }
  void move(Player x){
   if(x.XCoord - XCoord > 0) {  
     moveEast();
     direction = 2;
   }
   if(x.XCoord - XCoord < 0){
    moveWest();
    direction = 6;
   }
    if(x.YCoord - YCoord < 0){
    moveNorth();
    direction =0;
   }
    if(x.YCoord - YCoord > 0){
    moveSouth();
    direction = 4;
   }
   
  }
}
class Player extends Characters {
  public Player(int X, int Y, int health, int atk) {
    super(X, Y, health, atk) ;
    
  }
  void drawCharacters() {
    chooseColor(health, maxHP);
    ellipse(XCoord, YCoord, 30, 30);
  }
  
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
      fill(0, 256, 0);
    }
  }
 
}
class Player extends Characters {
  public Player(int X, int Y, int health, int atk) {
    super(X, Y, health, atk) ;
    
  }
  void drawCharacters() {
    chooseColor(health, originalHP);
    ellipse(XCoord, YCoord, 30, 30);
  }
  
  void chooseColor(int health, double originalHP){
      if(health/originalHP <= 0.25){
      fill(256, 0, 0);
    }
    else if(health/originalHP <= 0.5){
      fill(256, 128, 0);
    }
    else if(health/originalHP <= 0.75){
      fill(153, 256, 51);
    }
    else if(health/originalHP <= 1){
      fill(0, 256, 0);
    }
  }
 
}
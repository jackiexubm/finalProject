class Player extends Characters{
public Player(int X, int Y){
 super(X,Y) ;
 speed = 4;
}
void move(boolean u, boolean r, boolean d, boolean l) {
    if(XCoord == 0){
      l = false;  
    }
    if(XCoord == width){
     r = false; 
    }
    if(YCoord == height){
     d = false; 
    }
    if(YCoord == 0){
     u = false; 
    }
    if (u && r) {
      moveNorthEast();
      direction = 1;
    } else
      if (u && l) {
        moveNorthWest();
        direction = 7;
      } else
        if (d && r) {
          moveSouthEast();
          direction = 3;
        } else
          if (d && l) {
            moveSouthWest();
            direction = 5;
          } else 
          if (r) {
            moveEast();
            direction = 2;
          } else
            if (l) {
              moveWest();
              direction = 6;
            } else
              if (u) {
                moveNorth();
                direction = 0;
              } else
                if (d) {
                  moveSouth();
                  direction = 4;
                }
  }
}
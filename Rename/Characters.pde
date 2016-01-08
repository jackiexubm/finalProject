class Characters {
  //variables
  int XCoord;
  int YCoord;
  int direction;

  //constructors
  Characters(int x, int y) {
    XCoord = x;
    YCoord = y;
    direction = 0;
  }

  //methods
  void move(boolean u, boolean r, boolean d, boolean l) {
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

  //basic direction
  void moveNorth() {
    YCoord -= 5;        //since number get larger going down, subtract when going up
  };
  void moveEast() {
    XCoord += 5;
  };
  void moveSouth() {
    YCoord += 5;
  };
  void moveWest() {
    XCoord -= 5;
  };
  void moveNorthEast() {
    YCoord -= 5;
    XCoord += 5;
  };
  void moveNorthWest() {
    YCoord -= 5;
    XCoord -= 5;
  };
  void moveSouthEast() {
    YCoord += 5;
    XCoord += 5;
  };
  void moveSouthWest() {
    YCoord += 5;
    XCoord -= 5;
  };

  void drawCharacters() {
    ellipse(XCoord, YCoord, 30, 30);
    fill(256, 256, 256);
    if (direction == 0) {
      line(XCoord, YCoord, XCoord, YCoord - 30);
    }
    if (direction == 1) {
      line(XCoord, YCoord, XCoord + 21, YCoord - 21);
    }
    if (direction == 2) {
      line(XCoord, YCoord, XCoord + 30, YCoord);
    }
    if (direction == 3) {
      line(XCoord, YCoord, XCoord + 21, YCoord + 21);
    }
    if (direction == 4) {
      line(XCoord, YCoord, XCoord, YCoord + 30);
    }
    if (direction == 5) {
      line(XCoord, YCoord, XCoord - 21, YCoord + 21);
    }
    if (direction == 6) {
      line(XCoord, YCoord, XCoord - 30, YCoord);
    }
    if (direction == 7) {
      line(XCoord, YCoord, XCoord - 21, YCoord - 21);
    }

    //try {                          //slows down the animation
    //  Thread.sleep(1);                 
    //} 
    //catch(InterruptedException ex) {
    //  Thread.currentThread().interrupt();
    //}
  }
}
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
    YCoord -= 5;
    XCoord += 5;
  };

  void drawCharacters() {
    ellipse(XCoord, YCoord, 30, 30);
    fill(256, 256, 256);
    if (direction == 0) {
      line(XCoord, YCoord, XCoord, YCoord - 30);
    }if (direction == 1) {
      line(XCoord, YCoord, XCoord + 21, YCoord - 21);
    }if (direction == 2) {
      line(XCoord, YCoord, XCoord + 30, YCoord);
    }if (direction == 3) {
      line(XCoord, YCoord, XCoord + 21, YCoord + 21);
    }if (direction == 4) {
      line(XCoord, YCoord, XCoord, YCoord + 30);
    }if (direction == 5) {
      line(XCoord, YCoord, XCoord - 21, YCoord + 21);
    }if (direction == 6) {
      line(XCoord, YCoord, XCoord - 30, YCoord);
    }if (direction == 7) {
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
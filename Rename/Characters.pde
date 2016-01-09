abstract class Characters {
  //variables
  int XCoord;
  int YCoord;
  int direction;
  int speed;

  //constructors
  Characters(int x, int y) {
    XCoord = x;
    YCoord = y;
    direction = 0;
  }

  //methods
  //abstract void move(boolean u, boolean r, boolean d, boolean l);

  //basic direction
  void moveNorth() {
    YCoord -= speed;        //since number get larger going down, subtract when going up
  };
  void moveEast() {
    XCoord += speed;
  };
  void moveSouth() {
    YCoord += speed;
  };
  void moveWest() {
    XCoord -= speed;
  };
  void moveNorthEast() {
    YCoord -= speed;
    XCoord += speed;
  };
  void moveNorthWest() {
    YCoord -= speed;
    XCoord -= speed;
  };
  void moveSouthEast() {
    YCoord += speed;
    XCoord += speed;
  };
  void moveSouthWest() {
    YCoord += speed;
    XCoord -= speed;
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
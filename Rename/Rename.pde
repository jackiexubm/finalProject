Player test;
Zombie zob;
boolean pause;

void setup() {
  size(1000, 500);
  background(125, 142, 240);
  test = new Player(30, 30);
  zob = new Zombie(20, 20);
  pause = false;
}

void draw() {
  if (pause) {
  } else {
    background(190, 190, 190);
    test.drawCharacters();
    test.move();
    zob.drawCharacters();
    zob.findDirection(test);
    zob.move();
  }
}

void keyPressed() {
  if (keyCode == UP) {
    test.velY = -5;
  } else
    if (keyCode == RIGHT) {
      test.velX = 5;
    } else
      if (keyCode == DOWN) {
        test.velY = 5;
      } else
        if (keyCode == LEFT) {
          test.velX = -5;
        } else
          if (key == 'p') {         
            if (!pause) {
              pause = true;
            } else {
              pause = false;
            }
          }
}

void keyReleased() {
  if (keyCode == UP) {
    test.velY = 0;
  } else
    if (keyCode == RIGHT) {
      test.velX = 0;
    } else
      if (keyCode == DOWN) {
        test.velY = 0;
      } else
        if (keyCode == LEFT) {
          test.velX = 0;
        }
}
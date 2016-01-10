Player test;
Zombie zob;
boolean pause;
boolean game;

void setup() {
  size(1000, 500);
  background(125, 142, 240);
  test = new Player(30, 30, 100, 0);
  zob = new Zombie(800, 400, 100, 5);
  pause = false;
  game = true;
}

void draw() {
  if (pause || !game) {
  } else {
    if(test.health <= 0){
      game = false;
    }
    background(190, 190, 190);
    test.drawCharacters();
    test.move();
    zob.drawCharacters();
    zob.findDirection(test);
    zob.move();
    zob.attack(test);
  }
}

void keyPressed() {
  if (keyCode == UP) {
    test.velY = -3;
  } else
    if (keyCode == RIGHT) {
      test.velX = 3;
    } else
      if (keyCode == DOWN) {
        test.velY = 3;
      } else
        if (keyCode == LEFT) {
          test.velX = -3;
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
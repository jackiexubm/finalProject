Player test;
Zombie zob;
Pistol gun;
boolean pause;
boolean game;
boolean isShooting;

void setup() {
  size(1000, 500);
  background(125, 142, 240);
  test = new Player(30, 30, 100, 5);
  zob = new Zombie(800, 400, 100, 5);
  gun = new Pistol(5, 0);
  pause = false;
  game = true;
  isShooting = false;
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
    test.changeDirection();
    //zob.move();
    zob.attack(test);
    test.giveWeapon(gun);
    test.shoot(zob, isShooting);
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
  if(key == 'r'){
    isShooting = true;
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
        if (keyPressed && keyCode== UP){
        test.velY = -3;
        }
      } else
        if (keyCode == LEFT) {
          test.velX = 0;
        }
   if(key == 'r'){
    isShooting = false;
  }
}
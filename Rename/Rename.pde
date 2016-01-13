Player test;
Zombie zob;
//Pistol gun;
boolean pause;
boolean game;
boolean isShooting;
int level;
Wave wave;

void setup() {
  size(1000, 500);
  background(125, 142, 240);
  test = new Player(30, 30, 100, 5);
  zob = new Zombie(800, 400, 100, 5);
 //gun = new Pistol(5, 0);
  pause = false;
  game = true;
  isShooting = false;
  level = 1;
  wave = new Wave();
  
}
void draw() {
  if (pause || !game) {
  } else {
    if(test.health <= 0){
      game = false;
      level = 1;
    }
    if(wave.getSize() == 0){
      wave.makeWave((level - 1) * 5 + 10);
    }
    wave.action();
    background(190, 190, 190);
    test.drawCharacters();
    test.move();

    
    
    test.changeDirection();
    
    
    //zob.makeDead();
    //zob.attack(test);
   //test.giveWeapon(gun);
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
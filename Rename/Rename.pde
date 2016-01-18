Player test;
Zombie zob;
Pistol gun;
boolean pause;
boolean game;
boolean isShooting;
int level;
Wave wave;
Weapons isEquipped = new Pistol(5, 2);
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int nextShot = millis();
Score myScore = new Score();
int nextSpawn =0;
int waveSize = 0;


void setup() {
  size(1000, 650);
  test = new Player(width/2, height/2, 100, 5);
  zob = new Zombie(800, 400, 100, 5);
  gun = new Pistol(30, 0);
  pause = false;
  game = true;
  isShooting = false;
  level = 1;
  wave = new Wave();
}

void draw() {
  background(125, 142, 240);
  if (pause || !game) {
  } else {
    if (test.health <= 0) {
      game = false;
      level = 1;
    }
    if(waveSize > 0 && millis() >= nextSpawn){
      waveSize--;
      nextSpawn += 1000;
      wave.spawn(waveSize%2);
      System.out.println("hi");
    }
    if (wave.getSize() == 0) {
       waveSize = 5 + level * 5;
      nextSpawn = millis() + 10;
      //going to add a short timer between levels
      //wave.makeWave(waveSize, test);
      level ++;
    }
    
    if(myScore.checkMilestone()){
     System.out.println("good job"); 
    }
    myScore.addScore(wave.move(test));
    wave.checkOverlap();
      
    test.drawCharacters();
    test.move();
    test.drawGun();
    test.changeDirection();

    if (isShooting && millis() >= nextShot) {
      bullets.add(test.shoot(isEquipped));
      nextShot = millis() + 300;
    }
    for (int i = 0; i < bullets.size(); i ++) {
      bullets.get(i).drawBullet();
      bullets.get(i).move();
      if (bullets.get(i).damage(wave)) {
        bullets.remove(i);
      }
    }
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
  if (key == 'r') {
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
        if (keyPressed && keyCode== UP) {
          test.velY = -3;
        }
      } else
        if (keyCode == LEFT) {
          test.velX = 0;
        }
  if (key == 'r') {
    isShooting = false;
  }
}
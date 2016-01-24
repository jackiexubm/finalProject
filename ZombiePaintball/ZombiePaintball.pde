Player test;
Zombie zob;
Pistol gun;
boolean pause;
boolean game;
boolean isShooting;
int level;
Wave wave;
Weapons isEquipped = new Pistol(27, 2);
ArrayList<Bullet> bullets = new ArrayList<Bullet>();
int nextShot = millis();
Score myScore = new Score();
int nextSpawn =0;
int waveSize = 0;
ArrayList<HealthPack> healthpacks = new ArrayList<HealthPack>();
int lastHPPack = 0;
PImage p0;
PImage p1;
PImage p2;
PImage p3;
PImage p4;
PImage p5;
PImage p6;
PImage p7;
PImage z0;
PImage z1;
PImage z2;
PImage z3;
PImage z4;
PImage z5;
PImage z6;
PImage z7;


void setup() {
  size(1000, 650);
  test = new Player(width/2, height/2, 100, 5);
  pause = false;
  game = true;
  isShooting = false;
  level = 1;
  wave = new Wave();
  p0 = loadImage("player0.png");
  p1 = loadImage("player1.png");
  p2 = loadImage("player2.png");
  p3 = loadImage("player3.png");
  p4 = loadImage("player4.png");
  p5 = loadImage("player5.png");
  p6 = loadImage("player6.png");
  p7 = loadImage("player7.png");
  z0 = loadImage("zombie0.png");
  z1 = loadImage("zombie1.png");
  z2 = loadImage("zombie2.png");
  z3 = loadImage("zombie3.png");
  z4 = loadImage("zombie4.png");
  z5 = loadImage("zombie5.png");
  z6 = loadImage("zombie6.png");
  z7 = loadImage("zombie7.png");
}

void draw() {
  background(235, 220, 197);
  if (!game || pause) {
    if (pause) {
      fill(0);
      textSize(100);
      text("Game Paused", width/5, height/2);
    }
    if (!game) {
      textSize(100);
      fill(0);
      text("Game Over", width/4, height/2);
    }
  } else {
    String health = "HP: " + test.health;
    fill(0);
    textSize(20);
    text(health, 10, height - 10);
    text("Wave " + (level-1), 10, 25);
    text("Zombie " + wave.getSize(), width-150, 25);
    text("Score: " + myScore.score, width-150, height - 10);    
    if (test.health <= 0) {
      game = false;
      level = 1;
      System.out.println("Game Over");
    }
    if (waveSize > 0 && millis() >= nextSpawn) {
      waveSize--;
      nextSpawn += 900;
      wave.spawn(waveSize%2);
    }
    if (wave.getSize() == 0) {
      System.out.println("Current Level: " + level);
      System.out.println("Current Score: " + myScore.score);
      waveSize = 5 + level * 5;
      nextSpawn = millis() + 10;
      //going to add a short timer between levels
      //wave.makeWave(waveSize, test);
      level ++;
    }

    if (myScore.checkMilestone()) {
      System.out.println("good job");
    }
    if (healthpacks.size() > 0) {
      healthpacks.get(0).drawPack();
    }
    if (healthpacks.size() > 0 && millis() >= healthpacks.get(0).time) {
      healthpacks.clear();
    }
    if (healthpacks.size() > 0 && test.checkHealthPack(healthpacks.get(0))) {
      healthpacks.get(0).replenishHealth(test);
      healthpacks.remove(0);
    }
    if (myScore.score % 5 == 0 && myScore.score == lastHPPack + 5) {
      if (healthpacks.size() > 0) {
        healthpacks.remove(0);
      }
      HealthPack hp = new HealthPack((int)(Math.random() * width), (int)(Math.random() * height), 20, 10, millis(), 10000); 
      healthpacks.add(hp);
      lastHPPack += 5;
    }
    myScore.addScore(wave.move(test));
    wave.checkOverlap(test);

    if (test.direction == 0) {
      image(p0, test.XCoord - 20, test.YCoord - 25, 40, 50);
    } else if (test.direction == 2) {
      image(p2, test.XCoord - 20, test.YCoord - 25, 45, 50);
    } else if (test.direction == 4) {
      image( p4, test.XCoord - 20, test.YCoord - 25, 40, 50);
    } else if (test.direction == 6) {
      image( p6, test.XCoord - 20, test.YCoord - 25, 40, 50);
    } else if (test.direction == 1) {
      image( p1, test.XCoord - 20, test.YCoord - 25, 47, 50);
    } else if (test.direction == 3) {
      image( p3, test.XCoord - 20, test.YCoord - 25, 30, 50);
    } else if (test.direction == 5) {
      image( p5, test.XCoord - 20, test.YCoord - 25, 45, 50);
    } else if (test.direction == 7) {
      image( p7, test.XCoord - 20, test.YCoord - 25, 30, 50);
    }
    test.move();
    test.changeDirection();



    if (isShooting && millis() >= nextShot) {
      bullets.addAll(test.shoot(isEquipped));
      if (isEquipped instanceof Pistol) {
        nextShot = millis() + 500;
      } else if (isEquipped instanceof Shotgun) {
        nextShot = millis() + 900;
      } else if (isEquipped instanceof Rifle) {
        nextShot = millis() + 80;
      }
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
  if (key == '1') {
    isEquipped = new Pistol(27, 0);
  }
  if (key == '2') {
    isEquipped = new Shotgun(13, 0);
  }
  if (key == '3') {
    isEquipped = new Rifle(8, 0);
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
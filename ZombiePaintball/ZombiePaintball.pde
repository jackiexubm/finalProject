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
Game gameFunctions;
int explo;
PImage boom;
float boomX;
float boomY;
int milestone = 0;
boolean main;
ArrayList<Bullet> devilProjectiles = new ArrayList<Bullet>();
int devilAmount = 0;
DevilWave dWave = new DevilWave();


void setup() {
  size(1000, 650);
  test = new Player(width/2, height/2, 100, 5);
  pause = false;
  game = true;
  isShooting = false;
  level = 0;
  wave = new Wave();
  gameFunctions = new Game();
  boom = loadImage("explosion.png");
  main = true;
}

void draw() {
  if(!main){
    
  }
  else{
    background(235, 220, 197);
    if (!game || pause) {
      if (pause) {
        rectMode(CENTER);
        fill(100);
        rect(width/2, 3*height/4 - 25, 400, 100);
        fill(0);
        textSize(100);
        text("Game Paused", width/5, height/2);
        text("Restart", width/3, 3*height/4);
        if (mousePressed == true && mouseX <= width/2 + 400 && mouseX >= width/2 - 400 && mouseY >= 3*height/4-125 && mouseY <= 3*height/4+75) {
          gameFunctions.restart(myScore, wave, test);
          level = 0;
          pause = false;
        }
      }
      if (!game) {
        textSize(100);
        fill(0);
        text("Game Over", width/4, height/2);
         text("Restart", width/3, 3*height/4);
        if (mousePressed == true && mouseX <= width/2 + 400 && mouseX >= width/2 - 400 && mouseY >= 3*height/4-125 && mouseY <= 3*height/4+75) {
          gameFunctions.restart(myScore, wave, test);
          level = 0;
          pause = false;
          game = true;
        }
      }
    } else {
      String health = "HP: " + test.health;
      fill(0);
      textSize(20);
      text(health, 10, height - 10);
      text("Wave " + level, 10, 25);
      text("Zombie " + wave.getSize(), width-150, 25);
      text("Score: " + myScore.score, width-150, height - 10);    
      if (test.health <= 0) {
        game = false;
      }
      if (waveSize > 0 && millis() >= nextSpawn) {
        waveSize--;
        nextSpawn += 900;
        wave.spawn(waveSize%2);
      }
      if (wave.getSize() == 0 && dWave.size == 0) {
       level ++;
       System.out.println("Current Level: " + level);
       System.out.println("Current Score: " + myScore.score);
       waveSize = 5 + level * 5;
       devilAmount = (int)(level/5 + 1);
       dWave.spawnDevils(devilAmount);
       System.out.println(dWave.size);
       nextSpawn = millis() + 10;
      }
      dWave.move(test, wave);
      if (myScore.checkMilestone()) {
        milestone ++;
        System.out.println("good job");
        if (healthpacks.size() > 0) {
          healthpacks.remove(0);
        }
        HealthPack hp = new HealthPack((int)(Math.random() * width), (int)(Math.random() * height), 20, 25, millis(), 10000); 
        healthpacks.add(hp);
        lastHPPack += 20;
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
      
      myScore.addScore(wave.move(test));
      wave.checkOverlap(test);
  
      test.drawCharacters();
      test.move();
      test.changeDirection();
  

  
      if (isShooting && millis() >= nextShot) {
        bullets.addAll(test.shoot(isEquipped));
        if (isEquipped instanceof Pistol) {
          nextShot = millis() + 450;
        } else if (isEquipped instanceof Shotgun) {
          nextShot = millis() + 800;
        } else if (isEquipped instanceof Rifle) {
          nextShot = millis() + 80;
        } else if (isEquipped instanceof Rocket) {
          nextShot = millis() + 2000;
        }
      }
  
      for (int i = 0; i < bullets.size(); i ++) {
        bullets.get(i).drawBullet();
        bullets.get(i).move();
        if (bullets.get(i).type == 1 && bullets.get(i).damage(wave, test,dWave)) {
          boomX = bullets.get(i).XCoord;
          boomY = bullets.get(i).YCoord;
          explo = 2560;
          bullets.remove(i);
        } else if (bullets.get(i).damage(wave, test,dWave)) {
          bullets.remove(i);
        }
      }
  
      if (explo > 0) {
        System.out.println(explo);
        tint(255, explo/10);
        image(boom, boomX - 90, boomY - 30, 180, 100);
        explo -= 32;
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
    if (isEquipped instanceof Pistol) {
    } else {
      nextShot = millis() + 200;
      isEquipped = new Pistol(27, 0);
    }
  }
  if (key == '2' && milestone >0) {
    if (isEquipped instanceof Shotgun) {
    } else {
      nextShot = millis() + 300;
      isEquipped = new Shotgun(13, 0);
    }
  }
  if (key == '3' && milestone >1) {
    if (isEquipped instanceof Rifle) {
    } else {
      nextShot = millis() + 200;
      isEquipped = new Rifle(7, 0);
    }
  }
  if (key == '4' && milestone >2) {
    if (isEquipped instanceof Rocket) {
    } else {
      nextShot = millis() + 500;
      isEquipped = new Rocket(34, 0);
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
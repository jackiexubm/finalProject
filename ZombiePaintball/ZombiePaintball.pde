import java.util.Collections;
Player test;
Zombie zob;
Pistol gun;
boolean pause;
boolean game;
boolean isShooting;
int level;
Wave wave;
Weapons isEquipped = new Pistol(26, 2);
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
PImage chars;
float boomX;
float boomY;
int milestone = 0;
boolean main;
ArrayList<Bullet> devilProjectiles = new ArrayList<Bullet>();
int devilAmount = 0;
DevilWave dWave = new DevilWave();
ArrayList<Characters> drawOrder;
boolean playerPresent;
String wep = "";
int timeForWepMsg = 0;
boolean msg = false;
int devilKill;
int zombieKill;
boolean instructions = false;

void setup() {
  size(1000, 650);
  noStroke();
  test = new Player(width/2, height/2, 100, 5);
  pause = false;
  game = true;
  isShooting = false;
  level = 0;
  wave = new Wave();
  gameFunctions = new Game();
  boom = loadImage("explosion.png");
  main = true;
  chars = loadImage("Characters.jpg");
  drawOrder = new ArrayList<Characters>();
  playerPresent = false;
}

void draw() {
  if (main) {
    background(255, 255, 255);
    pause = false;
    game = false;
    noTint();
    image(chars, 0, height/2, width, height/2);
    fill(0);
    textSize(100);
    textAlign(CENTER, TOP);
    text("ZOMBIE PAINTBALL", width/2, 0);
    if (mousePressed == true && mouseX <= 3*width/5 && mouseX >= 2*width/5 && mouseY >= 140 && mouseY <= 210) {
          gameFunctions.restart(myScore, wave, test, dWave);
          devilKill = 0;
          zombieKill = 0;
          playerPresent = false;
          level = 0;
          pause = false;
          game = true;
          main = false;
          instructions = false;
        }
     if (mousePressed == true && mouseX <= 2*width/3 && mouseX >= width/3 && mouseY >= 220 && mouseY <= 290) {
          gameFunctions.restart(myScore, wave, test, dWave);
          playerPresent = false;
          devilKill = 0;
          zombieKill = 0;
          level = 0;
          pause = false;
          game = false;
          main = false;
          instructions = true;
        }
    textSize(70);
    text(">Play<", width/2, 140);
    text(">Instructions<", width/2, 220);
  }
    else if(instructions){
     background(255,255,255);
     pause = false;
     game = false;
     main = false;
     textSize(70);
     textAlign(CENTER, TOP);
     text("Instructions",width/2,0);
     textSize(50);
     text("Keyboard Buttons:",width/2,90);
     textSize(40);
     text("Arrow Keys: Move Around", width/2, 160);
     text("Spacebar: Shoot", width/2, 220);
     text("1: Pick Pistol", width/2, 280);
     text("2: Pick Shotgun", width/2, 340);
     text("3: Pick Rifle", width/2, 400);
     text("4: Pick Rocket Launcher", width/2, 460);
     textAlign(CENTER, BOTTOM);
     text(">Exit to Main Menu<",width/2,height);
     if (mousePressed == true && mouseX <= 2*width/3 && mouseX >= width/3 && mouseY >= height - 40 && mouseY <= height) {
          gameFunctions.restart(myScore, wave, test, dWave);
          playerPresent = false;
          devilKill = 0;
          zombieKill = 0;
          level = 0;
          pause = false;
          game = false;
          main = true;
          instructions = false;;
        }
    }
   
      else if (pause) {
        background(255,255,255);
        textAlign(CENTER,TOP);
        textSize(100);
        text("Game Paused", width/2, 0);
        textSize(70);
        text("Unlockable Weapons:", width/2, 120);
        textSize(40);
        text("Shotgun Unlocked at Level 2", width/2, 210);
        text("Rifle Unlocked at Level 3", width/2, 270);
        text("Rocket Launcher Unlocked at Level 4", width/2, 330);
        textSize(70);
        text(">Restart<", width/2, 420);
        if (mousePressed == true && mouseX <= 3*width/5&& mouseX >= 2*width/5 && mouseY >= 420 && mouseY <= 490) {
          gameFunctions.restart(myScore, wave, test, dWave);
          playerPresent = false;
          devilKill = 0;
          zombieKill = 0;
          level = 0;
          pause = false;
          game = true;
        }
        text(">Main Menu<", width/2, 510);
        if (mousePressed == true && mouseX <= 3*width/5&& mouseX >= 2*width/5 && mouseY >= 510 && mouseY <= 580) {
          game = false;
          main = true;
          pause = false;
          instructions = false;
        }
      }
      else if (!game) {
        background(255,255,255);
        textAlign(CENTER, TOP);
        textSize(100);
        text("Game Over", width/2, 0);
        textSize(70);
        text("Stats:", width/2, 120);
        textSize(40);
        text("Zombie Kills: "  + zombieKill, width/2, 210);
        text("Devil Kills: "  + devilKill, width/2, 270);
        text("Score: " + myScore.score, width/2, 330);
        textSize(70);
        text(">Restart<", width/2, 420);
        if (mousePressed == true && mouseX <= 3*width/5&& mouseX >= 2*width/5 && mouseY >= 420 && mouseY <= 490) {
          gameFunctions.restart(myScore, wave, test, dWave);
          playerPresent = false;
          devilKill = 0;
          zombieKill = 0;
          level = 0;
          pause = false;
          game = true;
        }
        text(">Main Menu<", width/2, 510);
        if (mousePressed == true && mouseX <= 3*width/5&& mouseX >= 2*width/5 && mouseY >= 510 && mouseY <= 580) {
          game = false;
          main = true;
          pause = false;
          instructions = false;
        }
      }
     
    else{
      background(235, 220, 197);
      String health = "HP: " + test.health;
      fill(0);
      textSize(20);
      textAlign(LEFT, BOTTOM);
      text(health, 10, height - 10);
      text("Wave " + level, 10, 25);
      text("Zombie " + wave.getSize(), width-150, 25);
      text("Score: " + myScore.score, width-150, height - 10);    
      if (test.health <= 0) {
        playerPresent = false;
        game = false;
      }

      if (wave.getSize() == 0 && dWave.size == 0) {
        level ++;
        waveSize = level * 5;
        devilAmount = (level + 1)/3 ;
        dWave.spawnDevils(devilAmount);
        nextSpawn = millis();
        msg = true;
      }
      
      if(level == 2 && msg){
       wep = "Shotgun";
       timeForWepMsg = millis() + 3000;
       msg = false;
      }
      if(level == 3 && msg){
       wep = "Shotgun";
       timeForWepMsg = millis() + 3000;
       msg = false;
      }
      if(level == 4 && msg){
       wep = "Shotgun";
       timeForWepMsg = millis() + 3000;
       msg = false;
      }
      if(millis() < timeForWepMsg){
       textSize(50);
       textAlign(CENTER,CENTER);
       String msg = "Press " + level + " To Use " + wep;
       text(msg,width/2,height/2);
      }
      
      if (waveSize > 0 && millis() >= nextSpawn) {
        waveSize--;
        nextSpawn += 900;
        wave.spawn(waveSize%2);
      }
      devilKill += dWave.move(test, wave);
      myScore.calcScore(zombieKill,devilKill);
      if (myScore.checkMilestone()) {
        milestone ++;
        if (milestone == 1) {
          System.out.println("Shotgun obtained! Press 2 to equip");
        }
        if (milestone == 2) {
          System.out.println("Rifle obtained! Press 3 to equip");
        }
        if (milestone == 3) {
          System.out.println("Rocket obtained! Press 4 to equip");
        }


        if (healthpacks.size() > 0) {
          healthpacks.remove(0);
        }
        HealthPack hp = new HealthPack((int)(Math.random() * width), (int)(Math.random() * height), 20, 25, millis(), 12000); 
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

      zombieKill += wave.move(test);
      
      wave.checkOverlap(test, dWave.wave);

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
        if (bullets.get(i).type == 1 && bullets.get(i).damage(wave, test, dWave)) {
          boomX = bullets.get(i).XCoord;
          boomY = bullets.get(i).YCoord;
          explo = 2560;
          bullets.remove(i);
        } else if (bullets.get(i).damage(wave, test, dWave)) {
          bullets.remove(i);
        }
      }

      if (explo > 0) {
        tint(255, explo/10);
        image(boom, boomX - 90, boomY - 30, 180, 100);
        explo -= 32;
      }

      if (!playerPresent) {
        drawOrder.add(test);
        playerPresent = true;
      }
      
      for (int i = 0; i < wave.size; i++) {
        boolean added = false;
        for (int i2 = 0; i2 < drawOrder.size(); i2++) {
          if (!added) {
            if (wave.wave.get(i) == drawOrder.get(i2)) {
              added = true;
            }
          }
        }
        if (!added) {
          drawOrder.add(wave.wave.get(i));
        }
      }

      for (int i = 0; i < dWave.size; i++) {
        boolean added = false;
        for (int i2 = 0; i2 < drawOrder.size(); i2++) {
          if (!added) {
            if (dWave.wave.get(i) == drawOrder.get(i2)) {
              added = true;
            }
          }
        }
        if (!added) {
          drawOrder.add(dWave.wave.get(i));
        }
      }

      Collections.sort(drawOrder);
      for (int i = 0; i < drawOrder.size(); i++) {
        drawOrder.get(i).drawCharacters();
      }

      for (int i = 0; i < drawOrder.size(); i++) {
       boolean existent = false;
       for (int i2 = 0; i2 < dWave.size; i2++) {
         if (drawOrder.get(i) == dWave.wave.get(i2)) {
           existent = true;
         }
       }
       if (!existent && wave.size > 0) {
         for (int i3 = 0; i3 < wave.size; i3++) {
           if (drawOrder.get(i) == wave.wave.get(i3)) {
             existent = true;
           }
         }
       }

       if (!existent && drawOrder.get(i) != test) {
         drawOrder.remove(i);
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
  if (key == ' ') {
    isShooting = true;
  }
  if (key == '1') {
    if (isEquipped instanceof Pistol) {
    } else {
      nextShot = millis() + 200;
      isEquipped = new Pistol(27, 0);
    }
  }
  if (key == '2' && level > 1) {
    if (isEquipped instanceof Shotgun) {
    } else {
      nextShot = millis() + 300;
      isEquipped = new Shotgun(14, 0);
    }
  }
  if (key == '3' && level > 2) {
    if (isEquipped instanceof Rifle) {
    } else {
      nextShot = millis() + 200;
      isEquipped = new Rifle(8, 0);
    }
  }
  if (key == '4' && level > 3) {
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
  if (key == ' ') {
    isShooting = false;
  }
}
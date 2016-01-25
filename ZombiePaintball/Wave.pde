import java.util.Collections;
class Wave {
  Zombie temp;
  Devil dev;
  int size;
  ArrayList<Zombie> wave = new ArrayList<Zombie>(0);
  Wave() {
    size = 0;
  }

  int getSize() {
    return size;
  }

  Zombie getZombie(int i) {
    return wave.get(i);
  }

  void remove(int i) {
    wave.remove(i);
  }
  
  //void addDevil(){
  //  dev = new Devil(
  //}

  void clear() {
    wave.clear(); 
    size = wave.size();
  }

  void makeWave(int amount) {
    int i = 0;
    int nextSpawn = millis();
    while (i < amount) {
      //if(millis() >= nextSpawn){
      int y = height;
      if (i%2 == 0) {
        y = 0;
      }
      System.out.println(1);
      temp = new Zombie(width/2, y, 100, 5);
      //temp.drawCharacters();
      wave.add(temp);
      nextSpawn += 1000;
      System.out.println(nextSpawn);
      i++;
      size = wave.size();
      //}
      // move(x);
    }
  }

  void spawn(int yCoor) {
    int y = height;
    if (yCoor == 0) {
      y = 0;
    }
    temp = new Zombie(width/2, y, 100, 5);
    wave.add(temp);
    size = wave.size();
  }


  int move(Player x) {
    int death = 0;
    Collections.sort(wave);
    for (int i = 0; i < size; i++) {
      wave.get(i).changeDirection();
      wave.get(i).drawCharacters();
      wave.get(i).findDirection(x);
      wave.get(i).move();
      wave.get(i).attack(x);
      if (wave.get(i).health <= 0) {
        wave.remove(i);
        i--;
        size = wave.size();
        death++;
      }
    }
    return death;
  }

  void checkOverlap(Characters x) {
    for (int i = 0; i < wave.size() - 1; i++) {
      for (int i2 = i + 1; i2 < wave.size(); i2++) {
        if (dist(wave.get(i).XCoord, wave.get(i).YCoord, wave.get(i2).XCoord, wave.get(i2).YCoord) <= 30) {
          wave.get(i).moveAwayFrom(wave.get(i2), 1);
        }
      }
      if (dist(wave.get(i).XCoord, wave.get(i).YCoord, x.XCoord, x.YCoord) <= 30) {
        if (x.velX == 0 && x.velY == 0) {
        } else {
          x.moveAwayFrom(wave.get(i), 2);
        }
      }
    }
    if (wave.size() > 0) {
      if (dist(wave.get(wave.size() - 1).XCoord, wave.get(wave.size() - 1).YCoord, x.XCoord, x.YCoord) <= 30) {
        if (x.velX == 0 && x.velY == 0) {
        } else {
          x.moveAwayFrom(wave.get(wave.size() - 1), 2);
        }
      }
    }
  }
}
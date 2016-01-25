class DevilWave{
 Devil temp;
  int size;
  ArrayList<Devil> wave = new ArrayList<Devil>();
  DevilWave() {
    size = 0;
  }

  int getSize() {
    return size;
  }


  void remove(int i) {
    wave.remove(i);
  }


  void clear() {
    wave.clear(); 
    size = wave.size();
  }



  void spawnDevils(int amount) {
    for(int i = 0; i < amount; i++){
    int x = width;
    if (i%2 == 0) {
      x = 0;
    }
    temp = new Devil(x, height/2, 500, 5);
    wave.add(temp);
    size = wave.size();
  }
  }


  int move(Player x, Wave enemy) {
    int death = 0;
    Collections.sort(wave);
    for (int i = 0; i < size; i++) {
      wave.get(i).faceDirection(x);
      wave.get(i).drawDevils();
      wave.get(i).findDirection(x);
      wave.get(i).move();
      wave.get(i).attack(x);
      wave.get(i).drawBullets(enemy, x, this);
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
class DevilWave {
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
    for (int i = 0; i < amount; i++) {
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

  void checkOverlap(Player x, ArrayList<Zombie> wave2) {
    for (int i = 0; i < wave2.size(); i++) {
      for (int i2 = 0; i2 < wave.size(); i2++) {
        if (dist(wave2.get(i).XCoord, wave2.get(i).YCoord, wave.get(i2).XCoord, wave.get(i2).YCoord) <= 30) {
          wave2.get(i).moveAwayFrom(wave.get(i2), 1);
        }
      }
      if (dist(wave.get(i).XCoord, wave.get(i).YCoord, x.XCoord, x.YCoord) <= 30) {
        wave.get(i).moveAwayFrom(x, 1);
      }
    }
  }
}
class Wave {
  Zombie temp;
  int size;
  ArrayList<Zombie> wave = new ArrayList<Zombie>(0);
  Wave() {
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

  void checkOverlap(Characters x, ArrayList<Devil> dWave) {
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
      for (int i3 = 0; i3 < dWave.size(); i3++) {
        if (dist(wave.get(i).XCoord, wave.get(i).YCoord, dWave.get(i3).XCoord, dWave.get(i3).YCoord) <= 35) {
          wave.get(i).moveAwayFrom(dWave.get(i3), 1);
        }
      }
    }
    if (dWave.size() > 1) {
      for (int i = 0; i < dWave.size() - 1; i++) {
        for (int i2 = i + 1; i2 < dWave.size(); i2++) {
          if (dist(dWave.get(i).XCoord, dWave.get(i).YCoord, dWave.get(i2).XCoord, dWave.get(i2).YCoord) <= 30) {
            dWave.get(i).moveAwayFrom(dWave.get(i2), 1);
          }
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
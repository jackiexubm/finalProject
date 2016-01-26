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
      temp = new Devil(x, height/2, 300, 5);
      wave.add(temp);
      size = wave.size();
    }
  }


  int move(Player x, Wave enemy) {
    int death = 0;
    Collections.sort(wave);
    for (int i = 0; i < size; i++) {
      wave.get(i).faceDirection(x);
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
}
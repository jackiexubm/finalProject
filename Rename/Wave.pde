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
  
  Zombie getZombie(int i) {
    return wave.get(i);
  }
  
  void remove(int i) {
    wave.remove(i);
  }

  void makeWave(int amount, Player x) {
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
  
  void tempMove(Player x, Zombie z){
      z.drawCharacters();
      z.findDirection(x);
      z.move();
      z.attack(x);
  }

  int move(Player x) {
    int death = 0;
    for (int i = 0; i < size; i++) {
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

  void checkOverlap() {
    for (int i = 0; i < wave.size() - 1; i++) {
      for (int i2 = i + 1; i2 < wave.size(); i2++) {
        if (dist(wave.get(i).XCoord, wave.get(i).YCoord, wave.get(i2).XCoord, wave.get(i2).YCoord) <= 30) {
          wave.get(i).moveAwayFrom(wave.get(i2),1);
        }
      }
    }
  }
}
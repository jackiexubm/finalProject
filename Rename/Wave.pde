class Wave {
  Zombie temp;
  int size;
  ArrayList<Zombie> wave = new ArrayList<Zombie>();
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

  void makeWave(int amount) {
    int i = 0;
    int nextSpawn = millis();
    while (i < amount) {
      int y = height/2;
      if (i%2 == 0) {
        y = 50;
      }
      System.out.println(1);
      temp = new Zombie(100, y, 100, 5);
      wave.add(temp);
      nextSpawn += 50;
      System.out.println(nextSpawn);
      i++;
    }
    size = wave.size();
  }

  void move(Player x) {
   
    for (int i = 0; i < size; i++) {

      wave.get(i).drawCharacters();
      wave.get(i).findDirection(x);
      wave.get(i).move();
      wave.get(i).attack(x);
      if (wave.get(i).health <= 0) {
        wave.remove(i);
        i--;
        size = wave.size();
      }
    }
    
  }

  //void checkOverlap() {
  // for (int i = 0; i < wave.size() - 1; i++) {
  //   System.out.println("first " + i);
  //   for (int i2 = i + 1; i < wave.size(); i2++) {

  //     if (true) {
  //               System.out.println(wave.size());
  //       wave.get(i).moveAwayFrom(wave.get(i2));
  //       System.out.println("second" + i2);
  //     }
  //   }
  // }
  //}
  
  //boolean intersects(Zombie first, Zombie second){
  //  return true;
  //}
}
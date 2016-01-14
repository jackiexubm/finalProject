class Wave{
 Zombie temp;
 int size;
 ArrayList<Zombie> wave = new ArrayList<Zombie>();
 Wave(){
   size = 0;
 }
 
 int getSize(){
  return size; 
 }
 Zombie getZombie(int i){
   return wave.get(i);
 }
 void makeWave(int amount){
  for(int i = 0; i < amount; i++){
        temp = new Zombie(800, 100, 100,5);
        wave.add(temp);
  }
  size = wave.size();
 }
 
 void move(Player x){
  for(int i = 0; i < size; i++){
     wave.get(i).drawCharacters();
     wave.get(i).findDirection(x);
     wave.get(i).move();
     wave.get(i).attack(x);
     //System.out.println(wave.get(i));
  }
 }
}
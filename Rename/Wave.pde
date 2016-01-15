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
 void remove(int i ){
   wave.remove(i);
 }
 void makeWave(int amount){
  for(int i = 0; i < amount; i++){
       int x = 100 * i;
        temp = new Zombie(x, 100, 100,5);
        wave.add(temp);
  }
  size = wave.size();
 }
 
 void move(Player x){
  for(int i = 0; i < size; i++){
    wave.get(i).drawCharacters();
    wave.get(i).findDirection(x);
     //wave.get(i).move();
     wave.get(i).attack(x);
     if(wave.get(i).health <= 0){
      wave.remove(i);
      i--;
      size = wave.size();
      
     }

     
    
     //System.out.println(wave.get(i));
  }
 }
 
 
 
}
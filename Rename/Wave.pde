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
   int i = 0;
  
   int nextSpawn = millis();
  while(wave.size() < amount){
        int y = height;
        if(i%2 == 0){
          y = 0;
        }
        System.out.println(1);
        temp = new Zombie(100, y, 100,5);
        wave.add(temp);
        nextSpawn += 50;
        i++;
       
  }
  size = wave.size();
 }
 
 void move(Player x){
  for(int i = 0; i < size; i++){
    wave.get(i).drawCharacters();
    wave.get(i).findDirection(x);
     wave.get(i).move();
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
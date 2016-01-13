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
 void makeWave(int size){
  for(int i = 0; i < size; i++){
        temp = new Zombie(100, 100, 100,5);
        wave.add(temp);
  }
  size = wave.size();
  System.out.println(size);
 }
 void action(){
  for(int i = 0; i < size; i++){
     wave.get(i).drawCharacters();
     wave.get(i).findDirection(test);
     wave.get(i).move();
  }
 }
}
Characters test;
boolean[] keys;
boolean pause;

void setup() {
  size(1000,1000);
  background(125, 142, 240);
  test = new Characters(30, 30);
  keys = new boolean[4];
  pause = false;
}

void draw() {
  if(pause){
  }else{
  background(190, 190, 190);
  test.drawCharacters();
  if(keyPressed == true){
    test.move(keys[0],keys[1],keys[2],keys[3]);
  }
 }
}
 
void keyPressed(){
    if(keyCode == UP){
       keys[0] = true;
    }
    if(keyCode == RIGHT){
       keys[1] = true;
    }
    if(keyCode == DOWN){
       keys[2] = true;
    }
    if(keyCode == LEFT){
       keys[3] = true;
    }
    if(key == 'p'){          //changed pause to only tapping p
      if(!pause){
        pause = true;}
        else{
        pause = false;}
    }
}

void keyReleased(){
    if(keyCode == UP){
       keys[0] = false;
    }
    if(keyCode == RIGHT){
       keys[1] = false;
    }
    if(keyCode == DOWN){
       keys[2] = false;
    }
    if(keyCode == LEFT){
       keys[3] = false;
    }
}
  
  



 
  
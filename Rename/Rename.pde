Characters test;
boolean[] keys;

void setup() {
  size(400, 500);
  background(125, 142, 240);
  test = new Characters(30, 30);
  keys = new boolean[4];
}

void draw() {
  background(190, 190, 190);
  test.drawCharacters();
  if(keyPressed == true){
    test.move(keys[0],keys[1],keys[2],keys[3]);
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
  
  



 
  
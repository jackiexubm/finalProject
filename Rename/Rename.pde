Characters test;

void setup() {
  size(400, 500);
  background(125, 142, 240);
  test = new Characters(30, 30);
}

void draw() {
  background(190, 190, 190);
  test.drawCharacters();
   if (keyPressed == true){
    if (keyCode == UP){
      test.moveNorth();
      test.direction = 0;
    }else if (keyCode == DOWN)
    {
      test.moveSouth();
      test.direction = 4;
    }else if (keyCode == LEFT)
    {
      test.moveWest();
      test.direction = 6;
    }else if (keyCode == RIGHT)
    {
      test.moveEast();
      test.direction = 2;
    }
  }
  
  
}


 
  
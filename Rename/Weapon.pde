//if(Math.sqrt(Math.pow(x.XCoord - XCoord, 2)+Math.pow(x.YCoord - YCoord,2)) <=5 && !canAttack){
//     nextAttack = millis() + 500;
//     canAttack = true;
//     System.out.println(1);
//   }
//   if(Math.sqrt(Math.pow(x.XCoord - XCoord, 2)+Math.pow(x.YCoord - YCoord,2)) <= 5 && canAttack && millis() >= nextAttack){
//     x.takeDamage(atk);
//      nextAttack = millis() + 500;
//     System.out.println(x.health);
//     System.out.println(2);
//   }
//   else if(Math.sqrt(Math.pow(x.XCoord - XCoord, 2)+Math.pow(x.YCoord - YCoord,2)) > 5){
//     canAttack = false;
//     System.out.println(3);
//   }
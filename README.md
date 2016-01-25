# finalProject
1. Project Description
- Zombie Paintball is a game based on Boxheads. It is a game where the player starts off with a pistol and as the player continues, they obtain better weapons.
The player must used the weapons to kill off waves of zombies and devils. The zombies are the basic enemy and will follow the player and attack within melee range.
The devil is a stronger enemy that will attack from far away. It will shoot projectiles rapidly once the player comes in range. The advanced weapons will include 
the shotgun (shoots multiple bullets in a spray with long reload), the rifle (shoots really fast, with low damage, and a small randomness in its spray, and the rocket
launcher (shoots really slowly, with explosive bullets that will damage zombies and players in the radius of explosion).

2. Directions
- It is in processing, so open ZombiePaintball directory and run the ZombiePaintball.pde file. No extra libraries are necesary.

3. Directions to use
- Any menu, pause, game end screens use mouse clicks
- The game itself used arrow buttons to move around
If two directions are pressed (i.e UP and RIGHT- movement will be northeast)
- Press "P" to pause/unpause
- Press SPACE to shoot
- Press "1-4" to rotate weapons

4. Log
Issac&Jackie (1/20/16)- Start discussing ideas on health packs
Issac (1/20/16)- Make health packs that appear on a set interval
*bug* - health packs not showing up *fixed*
*bug* - health packs not disappearing *fixed*
Jackie (1/20/16)- Start Shotgun, fix interaction between players and zombies, and change health pack shape
Issac&Jackie(1/22/16)- Discuss how projectile enemy should work and start programming it
Jackie (1/23/16) - Create and finish shotgun and rifles, implement new pictures for player and zombies (including different pictures for different directions),
weapons become switchable
Issac(1/23/16)- make restart button and start devil (projectile enemy)
*bug* - level sometimes starts at level 2
*bug* - healthpacks stops spawning after a while
Jackie (1/24/16) - Implemetation of comparable for overlapping zombies, make rocket and include fading explosion, and weapons become unlockable after level
Issac (1/24/16) - Make devil - zombie who shoot projectiles towards the player

NextSteps:
-direction of projectile based on differences of x and y coords between player/ devil and trig funcs
-add shotgun and machine gun
-add menu and milestones on pause menu
-update graphics
-menu (Title, play, key presses, gist of game)/ end game screen (have a restart button) Display stats
-bugs to fix:
if you stand diagonally from it
and wait for it to walk to you
it wont shoot you
has no unit collision with zombies
or the player
gets drawn below all other zombies
doesnt turn when it shoots;just stays in same direction
healthpack not spawning

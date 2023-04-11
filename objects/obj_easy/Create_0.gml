//used to call the random word function
goal = scr_getEasyList();
index = 0;
loading = false;
global.OVERR = false;
gameOver = false;
//the user gets 20 seconds to input the word
time = 20;
points = 0;
//can the player shoot is set to false
global.canPlayershoot = false;
//can the enemy shoot is set to false
global.canEnemyShoot = false;
alarm[1] = room_speed * 1;


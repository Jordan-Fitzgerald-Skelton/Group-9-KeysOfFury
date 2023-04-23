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

/*
	function test_objects_appear() {
		test_describe("Objects have spawned in", function() {
			test_it("objects are present", function() {
				//tests the player spawns in 
				assert_exists(obj_Player);
				//tests the enemy spwans in
				assert_exists(obj_Enemy);
				//checks that the main object spawns in
				assert_exists(obj_easy);
				//checks that the list that contains the words, spwans in 
				assert_exists(obj_easyList);
				//checks that the players gun spawns in
				assert_exists(oGun);
				//checks that the enemies gun spawns in
				assert_exists(oEnGun);
			});
		});
}
test_objects_appear();
test_run_all();
*/
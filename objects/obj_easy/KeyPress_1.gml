//runs whilst the game is playing
if (loading || gameOver) return;
//checks if the user presses escape. This will return them to the main menu 
if(keyboard_lastkey == vk_escape){
	//checks if the key pressed by the user = the next letter in the set word
	room_goto(rm_single_menu);
}else if(string_lower(string(chr(keyboard_lastkey))) == string_char_at(goal, index + 1)){
	index++;
	global.canPlayershoot = true;
	global.canEnemyShoot = false;
	audio_play_sound(sound_typing, 1, false);
	//checks if the user has inputted the word
	/*
	//checks that the above values inrement when the user enters the first letter of the word displayed on screen
	function test_values_increment() {
	test_describe("values have been incremented", function() {
		test_it("values have been incremented", function() {
			//checks if the index is incremented
			assert_is_true(index = 1);
			//checks if the player can shooot
			assert_is_true(global.canPlayershoot = true);
			//checks if the enemy cant shoot
			assert_is_true(global.canEnemyShoot = false);
		});
	});
}
test_values_increment();
test_run_all();
*/

	if(index == string_length(goal)){
		global.canPlayershoot = false;
		loading = true;
		points+=10;
		alarm[0] = room_speed * 1;
		time = 20;
		/*
		//checks that the above values are changed when the user inputs the correct word. 
	function test_values_increment() {
	test_describe("values have been incremented", function() {
		test_it("values have been incremented", function() {
			//checks if the player cant shoot
			assert_is_true(global.canPlayershoot = false);
			//checks if the users points = 10
			assert_is_true(points = 10);
			//checks of the timer has been reset to 20 seconds
			assert_is_true(time = 20);
			
		});
	});
}
test_values_increment();
test_run_all();
*/
	}

	//resets the letter that is checked and the time the user has 
}else{
	//stops the playert from shooting
	global.canPlayershoot = false;
	//allows the enemy to shoot
	global.canEnemyShoot = true;
	//plays an error sound
	audio_play_sound(sound_error, 1, false);
	//takes points from the user
	points -=5;
	//resets the inded that is compared to the users input
	index = 0;
	//takes a second away from the timer
	time--;
	//ends the game if the timer = 0 or the player runs out of health 
	/*
	//checks that the above values are changed when the user inputs the incorrect letter. 
	function test_values_decrement() {
	test_describe("values have been decremented", function() {
		test_it("values have been decremented", function() {
			assert_is_true(global.canPlayershoot = false);
			assert_is_true(global.canEnemyShoot = true);
			assert_is_true(points == -5);
			assert_is_true(index ==0);
		});
	});
}
test_values_decrement();
test_run_all();
*/

	//ends the game if the timer = 0 or the player runs out of health 
	if(time == 0 || global.death = true) {
		gameOver = true;
		global.canEnemyShoot = false;
		global.OVERR = true
	}
}

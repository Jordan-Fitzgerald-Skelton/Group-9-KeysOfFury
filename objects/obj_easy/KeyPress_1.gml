//runs whilst the game is playing
if (loading || gameOver) return;
//checks if the key pressed by the user = the next letter in the set word
if(keyboard_lastkey == vk_escape){
	room_goto(rm_single_menu);
}else if(string_lower(string(chr(keyboard_lastkey))) == string_char_at(goal, index + 1)){
	index++;
	global.canPlayershoot = true;
	global.canEnemyShoot = false;
	audio_play_sound(sound_typing, 1, false);
	//checks if the user has inputted the word
	if(index == string_length(goal)){
		global.canPlayershoot = false;
		loading = true;
		points+=10;
		alarm[0] = room_speed * 1;
		time = 20;
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
	if(time == 0 || global.death = true) {
		gameOver = true;
		global.canEnemyShoot = false;
		global.OVERR = true
	}
}

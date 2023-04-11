//runs whilst the game is playing
if (loading || gameOver) return;
//checks if the user presses escpae, this will return them to the previous menu 
if(keyboard_lastkey == vk_escape){
	room_goto(rm_single_menu);
	//checks if the key pressed by the user = the next letter in the set word
}else if(string_lower(string(chr(keyboard_lastkey))) == string_char_at(goal, index + 1)){
	//increases the index
	index++;
	//allows the player to shoot
	global.canPlayershoot = true;
	//makes sure the enemy cant shoot
	global.canEnemyShoot = false;
	//plays a sound to indicate the correct letter was inputed
	audio_play_sound(sound_typing, 1, false);
	//checks if the user has inputted the entire word
	if(index == string_length(goal)){
		//makes it so the play cant constanly shoot
		global.canPlayershoot = false;
		loading = true;
		//provides the user with points
		points+=10;
		//resets the timer
		alarm[0] = room_speed * 1;
		time = 10;
	}

	//resets the letter that is checked and the time the user has 
}else{
	global.canPlayershoot = false;
	global.canEnemyShoot = true;
	audio_play_sound(sound_error, 1, false);
	points -=5;
	index = 0;
	time--;
	//ends the game
	if(time == 0 || global.death = true){
		gameOver = true;
		global.canEnemyShoot = false;
		global.OVERR = true
	}
}

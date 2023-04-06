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
		time = 10;
	}

	//resets the letter that is checked and the time the user has 
}else{
	global.canPlayershoot = false;
	global.canEnemyShoot = true;
	audio_play_sound(sound_error, 1, false);
	correct = false;
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

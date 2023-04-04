time--;
//used when the timer runs out
if(time <= 0 ){
	time = 0;
	gameOver = true;
}else{
	alarm[1] = room_speed * 1;
}
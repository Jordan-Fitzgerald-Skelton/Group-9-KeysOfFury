//aligns the timer 
draw_set_color(c_white);
draw_set_halign(fa_right);
//draws the timer 
draw_text(room_width - 20, room_height - 750, string("Time"));
draw_text(room_width - 30, room_height - 730, string(time));

draw_text(room_width - 1250, 20, string("POINTS"))
draw_text(room_width - 1300, 40, string(points));

draw_set_halign(fa_center);
draw_set_valign(fa_middle)
//function for drawing the words
if(!gameOver){
	var xx = -ceil(string_length(goal)/2)*10;
	//draws the random word picked from the list to the screen
	for(i = 1; i < string_length(goal) + 1; i++){
		draw_set_font(Font1);
		draw_set_color(c_black);
		draw_text(room_width/2 + xx, room_height/4, string_char_at(goal, i));
		xx += 20;
	}
	//used to draw the text entered by the user
	xx = -ceil(string_length(goal)/2)*10;
	for(var i = 1; i < index + 1; i++){
		draw_set_color(c_red);
		draw_set_font(Font1);
		draw_text(room_width/2 + xx, room_height/4 + 20, string_char_at(goal, i));
		xx += 20;
	}
}else{
	//sets the colour of the text
	draw_set_color(c_black);
	//this text is displayed when the user runs out of time
	draw_text_transformed(room_width / 2, room_height / 4, "GAME OVER!", 1, 1, 1);
	draw_text_transformed(room_width / 2, room_height / 4 + 25, "POINTS =" + string(points), 1, 1, 1);
	draw_text_transformed(room_width / 2, room_height / 4+50, "Press ESC to return to the main menu", 1, 1, 1);
}

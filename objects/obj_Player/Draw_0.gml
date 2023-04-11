//this piece of code is used to create a 
//a hit animation when the user gets hit with a bullet
draw_self();
if(flash > 0){
	flash --;
	shader_set(shWhite)
	draw_self();
	shader_reset()
}
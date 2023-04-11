//when the bullet reaches the enemy it takes away 
//the enemies health and plays the hit animation
with (other){
	hp = hp -2;
	flash = 3;
}
//it then destroys itself so that it doesnt stay on the screen
instance_destroy();
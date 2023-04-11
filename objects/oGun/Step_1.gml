firingdelay = firingdelay -1;

if(global.canPlayershoot = true) && (firingdelay < 0) && (global.OVERR != true){
	firingdelay = 25;
	//used to create a bullet
	with (instance_create_layer(x, y, "Bullet", oBullet)){
		//sets how fast it can go
		speed = 5; 
		//sets the direction towards the enemy
		direction = obj_Enemy;
		image_angle = direction;
		
	}
}

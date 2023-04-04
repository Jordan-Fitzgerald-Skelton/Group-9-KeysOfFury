image_angle = point_direction(834, 381, obj_player_x, obj_player_y);
firingdelay = firingdelay -1;
	if(global.canEnemyShoot = true) && (firingdelay < 0) && (global.OVERR != true){
		firingdelay = 15;
		with (instance_create_layer(x, y, "Bullet", oEnBullet_very_hard)){
			speed = 5; 
			direction = other.image_angle;
			image_angle = direction;		
		}
	}
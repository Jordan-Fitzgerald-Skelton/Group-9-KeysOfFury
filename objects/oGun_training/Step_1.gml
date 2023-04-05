image_angle = point_direction(834, 381, obj_dummy_x, obj_dummy_y);
firingdelay = firingdelay -1;
if(global.canPlayershoot = true) && (firingdelay < 0) && (global.OVERR != true){
	firingdelay = 25;
	with (instance_create_layer(x, y, "Bullet", oBullet_training)){
		speed = 5; 
		direction = other.image_angle;
		image_angle = direction;
		
	}
}
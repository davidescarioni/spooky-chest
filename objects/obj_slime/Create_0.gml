event_inherited();

collision_objects = [obj_brick];

last_cell_x = floor(x / 32);
last_cell_y = floor(y / 32);

instance_create_layer(x, y, "Instances", obj_slime_block_timer);
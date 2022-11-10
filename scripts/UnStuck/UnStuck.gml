function UnStuck(item){
if instance_place(x,y,item) {
    var ii = instance_place(x,y,item)
    if x > ii.bbox_right {
        if (bbox_left <= ii.bbox_right) {
			x += lengthdir_x(1,direction);
			speed = 0;
        }
    }
    if x < ii.bbox_left {
        if (bbox_right >= ii.bbox_left) {
            x -= lengthdir_x(1,direction);
			speed = 0;
        }
    }
    if bbox_top < ii.bbox_top {
        if (bbox_bottom >= ii.bbox_top) {
			y -= lengthdir_x(1,direction);
			speed = 0;
        }
    }
    if bbox_bottom > ii.bbox_bottom {
        if (bbox_top <= ii.bbox_bottom) {
			y += lengthdir_x(1,direction);
			speed = 0;
        }
    }
} 
}
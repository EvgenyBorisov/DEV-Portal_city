var vel=argument0;

var h=0;

if vel[0]!=0{
	if vel[0]<0 h=bbox_left else h=bbox_right;
	if !tile_collision(h+vel[0],y+2)
	and !tile_collision(h+vel[0],y-2) {
	x+=vel[0];
	}
}
else if vel[1]!=0{
	if vel[1]<0 h=bbox_top else h=bbox_bottom;
	if !tile_collision(x+2,h+vel[1])
	and !tile_collision(x-2,h+vel[1]) {
	y+=vel[1];
	}
	
}


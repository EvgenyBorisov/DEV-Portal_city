/// @description Insert description here
// You can write your code in this editor

if tile_collision(bbox_left,bbox_bottom)==1  {
	if level.map[# floor(bbox_left/8),floor(bbox_bottom/8)]==0 {
		level.map[# floor(bbox_left/8),floor(bbox_bottom/8)]=-1;
	}
	state=2;
}

if tile_collision(bbox_left,bbox_top)==1  {
	if level.map[# floor(bbox_left/8),floor(bbox_top/8)]==0{
		level.map[# floor(bbox_left/8),floor(bbox_top/8)]=-1;
	}
	state=2;
}
if tile_collision(bbox_right,bbox_bottom)==1  {
	if level.map[# floor(bbox_right/8),floor(bbox_bottom/8)]==0{
		level.map[# floor(bbox_right/8),floor(bbox_bottom/8)]=-1;
	}
	state=2;
}
if tile_collision(bbox_right,bbox_top)==1  {
	if level.map[# floor(bbox_right/8),floor(bbox_top/8)]==0 {
		level.map[# floor(bbox_right/8),floor(bbox_top/8)]=-1;
	}
	state=2;
}

if state==2{
	instance_destroy(self);
	boom_create(x,y,spr_bullet_boom);
}
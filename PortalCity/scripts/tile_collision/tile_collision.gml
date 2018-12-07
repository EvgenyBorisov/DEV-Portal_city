if argument0>=level.map_w*8 {return 2}
if argument1>=level.map_h*8 {return 2}
if argument0<0 {return 2}
if argument1<0 {return 2}
if level.map[# floor(argument0/8),floor(argument1/8)]==-1 {
return false;
}
else {
	return global.tiles[# level.map[# floor(argument0/8),floor(argument1/8)],1]==1;
}
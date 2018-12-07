/// @description Insert description here
// You can write your code in this editor


map_w=26;
map_h=26;

map=ds_grid_create(map_w,map_h);

for (ix=0;ix<map_w;ix++){
	for (iy=0;iy<map_h;iy++){
		map[# ix,iy]=-1;
	}
}
/// @description Insert description here
// You can write your code in this editor


for (ix=0;ix<map_w;ix++){
	for (iy=0;iy<map_h;iy++){
		if map[# ix,iy] !=-1 {
			draw_sprite(global.tiles[# map[# ix,iy],0],0,ix*8,iy*8)
		}
	}
}
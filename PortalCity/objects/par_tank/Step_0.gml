/// @description Insert description here
// You can write your code in this editor
input_array[3]=0;
switch os_type {
case os_linux: case os_windows: case os_macosx:
	/*var gp_index, gp_count = gamepad_get_device_count();
	for (gp_index = 0; gp_index < gp_count; gp_index++) {
	    if (gamepad_is_connected(gp_index)) break;
	}
	var gp_active = (gp_index < gp_count); // whether a gamepad was found
	*/
	input_array=script_execute(controll_script_k);
	/*
	if gp_active {
		var gp_inp=get_input_gamepad(gp_index);
		input_array[0]=clamp(input_array[0]+gp_inp[0],-1,1);
		input_array[1]|=gp_inp[1];
		input_array[2]|=gp_inp[2];
		input_array[3]|=gp_inp[3];
	}
	*/
break;
case os_android: case os_ios:
	//input_array=get_input_touch(stick);
break;
}

//velocity[0]=input_array[0]*0.75;
//velocity[1]=input_array[1]*0.75;

is_mov=0;

if abs(input_array[0])>=abs(input_array[1]) {
	velocity[0]=input_array[0]*0.75;
	velocity[1]=0;
	
	if velocity[0]!=0 {
		y=8*round(y/8);
		if input_array[0]>=0 {dir=3}else {dir=1}
		is_mov=1;
	}
}
else {
	velocity[0]=0;
	velocity[1]=input_array[1]*0.75;
	
	if velocity[1]!=0 {
		x=8*round(x/8);
		if input_array[1]>=0 {dir=2}else {dir=0}
		is_mov=1;
	}
}
image_index=lvl*8+dir*2+is_mov*((controller.timer/4)%2);
//show_debug_message(is_mov)

move_tank(velocity);

if input_array[2] {
	if !instance_exists(bullet){
		var b=instance_create_layer(x+lengthdir_x(7,90*(1+dir)),y+lengthdir_y(7,90*(1+dir)),"Tanks",bullet);
		b.image_index=dir;
		b.direction=90*(1+dir);
		b.speed=2;
	}
}
if input_array[3] {
	if !instance_exists(port1){
		var b=instance_create_layer(x+lengthdir_x(7,90*(1+dir)),y+lengthdir_y(7,90*(1+dir)),"Tanks",port1);
		b.image_index=dir;
		b.direction=90*(1+dir);
		b.speed=4;
	}
}

// ax_x,ax_y,fire,ac
var input_array;
input_array[3]=0;

input_array[0]=keyboard_check(ord("D")) - keyboard_check(ord("A"));
input_array[1]=keyboard_check(ord("S")) - keyboard_check(ord("W"));
input_array[2]=keyboard_check(vk_space);
input_array[3]=keyboard_check(vk_shift);

return input_array;

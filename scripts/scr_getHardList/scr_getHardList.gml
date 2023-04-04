// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getHardList(){
	var i = irandom_range(0, array_length(global.hardList) -1);
	return global.hardList[i];
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_getVeryHardList(){
	var i = irandom_range(0, array_length(global.veryhardList) -1);
	return global.veryhardList[i];
}
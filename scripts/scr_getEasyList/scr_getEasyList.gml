//this script is used to get a random word from the easy list
function scr_getEasyList(){
	var i = irandom_range(0, array_length(global.easyList) -1);
	return global.easyList[i];
}
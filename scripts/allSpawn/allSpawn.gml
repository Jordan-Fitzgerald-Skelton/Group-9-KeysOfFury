// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function allSpawn(){
	function test_objects_appear() {
		test_describe("Objects have spawned in", function() {
			test_it("objects are present", function() {
				assert_exists(obj_Player);
				assert_exists(obj_Enemy);
				assert_exists(obj_easy);
				assert_exists(obj_easyList);
				assert_exists(oGun);
				assert_exists(oEnGun);
				});
			});
}
test_objects_appear();
test_run_all();
}
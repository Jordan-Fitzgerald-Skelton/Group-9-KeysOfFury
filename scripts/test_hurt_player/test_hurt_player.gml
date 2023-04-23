// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function test_hurt_player() {
  test_describe("player_damage", function() {
    
	test_before(function() {
      hp = 100;
    });
	
    test_it("subtracts health from the player", function() {
      hp = 100;
      obj_Player(10);
      assert_equal(hp, 90);
    });
  });
}
test_hurt_player();
test_run_all();
function test_quit() {
  test_describe("hurt_enemy", function() {

    test_before_each(function() {
      hp = 100;
    });

    test_it("subtracts from the health variable", function() {
      obj_Enemy(10);
      assert_equal(hp, 98);
    });

  });
}

test_quit();
test_run_all();
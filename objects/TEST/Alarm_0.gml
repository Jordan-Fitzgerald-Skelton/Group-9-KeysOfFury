//tests have been completed
test_plan = "1.."+string(test_count);
if(fail_count==0)
  {
  test_results = "#All tests passed!";
  }
else
  {
  test_results += "#Failed "+string(fail_count)+"/"+string(test_count)+" tests, "+string((test_count-fail_count) / test_count * 100)+"% okay";
  }


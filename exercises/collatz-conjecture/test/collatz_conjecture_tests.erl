-module(collatz_conjecture_tests).

-define(TESTED_MODULE, (sut(collatz_conjecture))).
-define(TEST_VERSION, 2).
-include("exercism.hrl").


zero_steps_for_one_test() ->
    ?assertMatch(0, ?TESTED_MODULE:steps(1)).

divide_if_even_test() ->
    ?assertMatch(4, ?TESTED_MODULE:steps(16)).

even_and_odd_steps_test() ->
    ?assertMatch(9, ?TESTED_MODULE:steps(12)).

large_number_of_even_and_odd_steps_test() ->
    ?assertMatch(152, ?TESTED_MODULE:steps(1000000)).

zero_is_an_error_test() ->
    ?assertMatch({error,
		  "Only positive numbers are allowed"},
		 ?TESTED_MODULE:steps(0)).

negative_value_is_an_error_test() ->
    ?assertMatch({error,
		  "Only positive numbers are allowed"},
		 ?TESTED_MODULE:steps(-15)).
- module(condition).
- export([hello/1]).

hello(N) ->
	I = erlang:list_to_integer("123"),
	io:format("Greeting ~w", I),
	if I == 1 -> io:format("Hello");
		I == 2 -> io:format("Good");
		I == 4 -> io:format("Morning");
		true -> ""
	end.


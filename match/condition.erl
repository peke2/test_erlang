- module(condition).
- export([hello/1, check/1]).


%erlからの直接実行時
%	erl -noshell -run condition hello 2 -s init stop
%erlのシェルから実行時
%	condition:hello(["2"]).
%
hello(N) ->
	I = list_to_integer(hd(N)),
	io:format("Greeting ~n"),
	if I == 1 -> io:format("Hello");
		I == 2 -> io:format("Good");
		I == 4 -> io:format("Morning");
		true -> ""
	end.


%文字列の比較はどうなるのか？
check(N)->
	Word = if N=="ABC" -> "Alpha";
		true -> "Nothing"
	end,
	io:format("~s~n", [Word]).


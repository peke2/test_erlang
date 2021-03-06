-module(arg).
-export([hello/0, one/1, add/1, add_arg/1, say/1]).


hello()->io:format("Hello").

one(A)->io:format("~s~n",A).


% シェルから実行する際の引数は以下の形で渡す
% erl -noshell -run arg add 122 518 -s init stop
% 引数の部分は文字列の配列で渡される
% ["122","518"]
add(A)->
	[B | C] = A,
	D = list_to_integer(B) + list_to_integer(hd(C)),
	io:format("~s~n", [integer_to_list(D)]).

add_arg(A)->
%	io:format("~s~n", [[list_to_integer(hd(A))+5]]).
	io:format("~B~n", [list_to_integer(hd(A))+5]).


% formatで指定するデータ部分は「配列」であること
say(N)->
%	io:format("~s~n", [integer_to_list(N)]).
%	io:format("~s~n", ["abcdefg"]).
%	io:format("~f~n", [123.5]).
%	io:format("~s~n", [integer_to_list(789)]).
%	io:format("~w~n", ["abcdefg"]).
	io:format("A=~s,B=~s~n", ["Hello", "World"]).


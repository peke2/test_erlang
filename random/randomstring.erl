- module(randomstring).
- export([num/1,num/2, alpha/1,alpha/2, all/1,all/2]).

%	【実行】
%	erl -noshell -run randomstring <関数名> <文字数>
%
%	数字 5文字
%	erl -noshell -run randomstring num 5
%
%	アルファベット＋数字 7文字
%	erl -noshell -run randomstring alpha 7
%
%	記号＋アルファベット＋数字 11文字
%	erl -noshell -run randomstring all 11


%	var chars = "abcdefghijklmnopqrstuvwxyz" ++ "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ++ "0123456789" ++ "!\"#$%&'()*+,./:;<=>?[\\]^_`{|}~~-@_"
%	"abcdefghijklmnopqrstuvwxyz"
%	"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
%	"0123456789"
%	"!\"#$%&'()*+,./:;<=>?[\\]^_`{|}~~-@_"
%	"-@_".


exec(_, _, 0)->[];
exec(Chars, Num, Count)->
	I = rand:uniform(Num),
	Rnum = lists:nth(I, Chars),
	Escaped = [Rnum] ++ if Rnum == "~" -> "~";
		true -> []
	end,
	[Escaped] ++ exec(Chars, Num, Count-1).

create(N, Chars)->
	Num = length(Chars),
	io:format(exec(Chars, Num, list_to_integer(hd(N)))).

num(N, C)->	create(N, "0123456789"++C).
num(N)->num(N, []).
%num(N)->num(N, []).

alpha(N, C)->num(N, "abcdefghijklmnopqrstuvwxyz" ++ "ABCDEFGHIJKLMNOPQRSTUVWXYZ"++C).
alpha(N)->alpha(N, []).

all(N, C)->alpha(N, "!\"#$%&'()*+,./:;<=>?[\\]^_`{|}~~-@_"++C).
all(N)->all(N, []).


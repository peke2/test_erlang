- module(randomstring).
- export([num/1,num/2, alpha/1,alpha/2, all/1,all/2]).

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


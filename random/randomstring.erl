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
	[lists:nth(I, Chars)] ++ exec(Chars, Num, Count-1).

create(N, Chars)->
	Num = length(Chars),
	exec(Chars, Num, N).

num(N, C)->	create(N, "0123456789"++C).
num(N)->num(N, []).
%num(N)->num(N, []).

alpha(N, C)->num(N, "abcdefghijklmnopqrstuvwxyz" ++ "ABCDEFGHIJKLMNOPQRSTUVWXYZ"++C).
alpha(N)->alpha(N, []).

all(N, C)->alpha(N, "!\"#$%&'()*+,./:;<=>?[\\]^_`{|}~~-@_"++C).
all(N)->all(N, []).


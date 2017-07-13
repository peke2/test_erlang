- module(randomstring).
- export([create/1]).

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

create(N)->
	Chars = "abcdefghijklmnopqrstuvwxyz" ++ "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ++ "0123456789" ++ "!\"#$%&'()*+,./:;<=>?[\\]^_`{|}~~-@_",
	Num = length(Chars),
	exec(Chars, Num, N).


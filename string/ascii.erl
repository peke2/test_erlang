% ASCII文字を出力
- module(ascii).
- export([print/0]).

print()->
	Chars = create(32),
	output(Chars).

output([])->ok;
output(N)->
	io:format("~c",[hd(N)]),
	output(tl(N)).

create(Code) when Code>126->[];
create(Code) when Code=<126->[Code]++create(Code+1).

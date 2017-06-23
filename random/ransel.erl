- module(ransel).
- export([select/1]).

select([]) -> [];
select(List) ->
	N = range(1, length(List)),
	Elem = lists:nth(N, List),
	List2 = lists:delete(Elem, List),
	lists:append(select(List2), [Elem]).

range(Min,Max)->
	rand:uniform(Max-Min+1)+Min-1.

%	配列内の数値をシャッフルする
%
%	使い方
%	erl
%	c(ransel).
%	ransel:select([1,2,3,4,5]).


-module(tut1).
-export([fac/1, multi/2]).	%fac/1は引数「N」が1つ

fac(1)->1;
fac(N)->N*fac(N-1).

multi(X, Y) ->
	X * Y.

%改行コードはCR+LFでも大丈夫っぽい
%全角を含む場合はUTF8じゃないとダメ

- module(fibo).
- export([run/1]).

%erlからの直接実行時
%	erl -noshell -run fibo run 4 -s init stop
%erlのシェルから実行時
%	fibo:run(4).
%
run(0) -> 0;
run(1) -> 1;
run(N) -> run(N-1) + run(N-2).



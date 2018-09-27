- module(fact).
- export([run/1]).

%erlからの直接実行時
%	erl -noshell -run fact run 4 -s init stop
%erlのシェルから実行時
%	fact:run(4).
%
run(0) -> 1;
run(N) -> run(N-1) * N.



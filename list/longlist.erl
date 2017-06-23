%	長いリストを作ってみる

-module(longlist).
-export([create/1]).

create(0)->[];
create(N)->create(N-1)++[N].

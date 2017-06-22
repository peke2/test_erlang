- module(random).
- export([range/2]).

range(Min,Max)->
	rand:uniform(Max-Min)+Min.

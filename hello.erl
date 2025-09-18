% Stephan Wehner (2025)
% Erlang
% https://www.erlang.org/
%
% Usage:
% $ erlc hello.erl
% $ erl -noshell -s hello start -s init stop
-module(hello).
-export([start/0]).

start() ->
    Input = io:get_line("What is your name? "),
    Name = string:strip(Input, right, $\n),
    io:format("Hello, ~s!~n", [Name]).

-module(spud).
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
	ok ->
	    ok;
	{error, {already_started, App}} ->
	    ok
    end.
	
start() ->
    ensure_started(crypto),
    ensure_started(webmachine),
    application:start(spud).

stop() ->
    Res = application:stop(spud),
    application:stop(webmachine),
    application:stop(crypto),
    Res.
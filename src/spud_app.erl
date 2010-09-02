-module(spud_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for webmachine_demo.
start(_StartType, _StartArgs) ->
    spud_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for webmachine_demo.
stop(_State) ->
    ok.

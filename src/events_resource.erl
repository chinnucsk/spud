-module(events_resource).
-export([init/1, to_html/2]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> {ok, undefined}.

to_html(ReqData, Context) -> {"<html><body>Hello, new world</body></html>", ReqData, Context}.
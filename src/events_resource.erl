-module(events_resource).
-export([
	init/1, 
	allowed_methods/2,
	post_is_create/2,
	create_path/2,
	content_types_accepted/2,
	accept_event_body/2
	]).

-include_lib("webmachine/include/webmachine.hrl").

init([]) -> 
	{ok, undefined}.

allowed_methods(RD, Ctx) -> 
	{['POST'], RD, Ctx}.

post_is_create(RD, Ctx) -> 
	{true, RD, Ctx}.

create_path(RD, Ctx) -> 
	{"ka34x", RD, Ctx}.

content_types_accepted(RD, Ctx) -> 
	{[
		{"application/json", accept_event_body}
	], 
	RD, 
	Ctx}.

accept_event_body(RD, Ctx) ->
    {true, RD, Ctx}.

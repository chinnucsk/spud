.PHONY: rel deps go

all: deps compile

compile:
	./rebar compile

deps:
	./rebar get-deps

clean:
	./rebar clean

test:
	./rebar skip_deps=true eunit

rel: deps
	./rebar compile generate

relclean:
	rm -rf rel/riak

go: all
	erl -pa ./ebin ./deps/webmachine/ebin ./deps/mochiweb/ebin -boot start_sasl -s spud
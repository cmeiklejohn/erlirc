.PHONY: rel deps test

all: deps compile

compile:
	@./rebar compile

app:
	@./rebar compile skip_deps=true

deps:
	@./rebar get-deps

docs:
	@./rebar doc

clean:
	@./rebar clean

distclean: clean
	@./rebar delete-deps

test: all
	@./rebar skip_deps=true eunit

dialyzer: erl
	@dialyzer -c ebin

REBAR=`which rebar || ./rebar`
.PHONY: all deps compile test clean

all: deps compile

deps:
	@$(REBAR) get-deps
compile:
	@$(REBAR) compile
test:
	@$(REBAR) skip_deps=true eunit
clean:
	@$(REBAR) clean

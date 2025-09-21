.PHONY: erl_compile erl_run clean

erl_compile:
	erlc hello.erl

erl_run: erl_compile
	erl -noshell -s hello start -s init stop

clean:
	rm -f *.beam

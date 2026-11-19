cc ?= cc

.PHONY: lib/foundry/foundry.o

graft: src/main.c lib/foundry/foundry.o
	$(cc) -o $@ src/main.c lib/foundry/foundry.o

lib/foundry/foundry.o:
	make --directory lib/foundry foundry.o

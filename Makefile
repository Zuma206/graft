CC ?= cc
CFLAGS ?= -I lib/foundry -Wall -Wextra -Werror -std=c23

.PHONY: lib/foundry/foundry.o clean

graft: main.o lib/foundry/foundry.o
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -rf compile_commands.json main.o graft lib/foundry/foundry.o

main.o: src/main.c
	$(CC) $(CFLAGS) -c -o $@ $^

lib/foundry/foundry.o:
	$(MAKE) --directory lib/foundry foundry.o
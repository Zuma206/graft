CC ?= cc
CFLAGS ?= -I lib/foundry -Wall -Wextra -Werror -std=c23

.PHONY: lib/foundry/foundry.o

graft: main.o lib/foundry/foundry.o
	$(CC) $(CFLAGS) -o $@ $^

main.o: src/main.c
	$(CC) $(CFLAGS) -c -o $@ $^

lib/foundry/foundry.o:
	make --directory lib/foundry foundry.o

CFLAGS := -ggdb -Wall -O2

test: main_test.c aes_core.c aes_ecb.c aes_cbc.c cbc128.c aes.h modes.h aes_locl.h
	gcc $(CFLAGS) $^ -o $@

.PHONY: clean
clean:
	rm -f *.o test

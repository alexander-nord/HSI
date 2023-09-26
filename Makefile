CC     = gcc
CFLAGS = -O2 -lm

HSI_INDEX := src/hsi_index.c

BUILDER = $(CC) $(CFLAGS) -o build/$(1) src/$(1).c $(HSI_INDEX)

all: mkdir_build make_all clean

make_all:
	$(call BUILDER,sindex)
	$(call BUILDER,sstat)
	$(call BUILDER,sfetch)

mkdir_build:
	rm -rf build/
	mkdir build/

clean:
	rm -rf *.o


CC=gcc
CFLAGS=--std=c99 -g -O2 -Wall --pedantic `freetype-config --cflags` `sdl2-config --cflags`
LDFLAGS=`icu-config --ldflags`
LIBS=-lm -lcairo -lharfbuzz `freetype-config --libs` `sdl2-config --libs`

all: ex-sdl-cairo-freetype-harfbuzz

ex-sdl-cairo-freetype-harfbuzz: ex-sdl-cairo-freetype-harfbuzz.c
	$(CC) $< $(CFLAGS) -o $@ $(LDFLAGS) $(LIBS)

clean:
	rm -f ex-sdl-cairo-freetype-harfbuzz

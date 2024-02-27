CC = clang
CXX = clang++

SRC  = $(wildcard src/**/*.c) $(wildcard src/*.c) $(wildcard src/**/**/*.c) $(wildcard src/**/**/**/*.c)

LDFLAGS = -lSDL2

BIN = bin
OUTPUT = $(BIN)/exe
OBJ  = $(SRC:.c=.o)
PATH_LIB = lib
PATH_SDL = $(PATH_LIB)/SDL



.PHONY: all clean


all: dirs libs game


dirs:
	mkdir -p ./$(BIN)


run: all
	$(BIN)/exe


libs-sdl:
	mkdir -p $(BIN)/sdl
	cmake -S $(PATH_SDL) -B $(BIN)/sdl
	cd $(BIN)/sdl && make -j 10
	chmod +x $(BIN)/sdl/sdl2-config
	mkdir -p $(BIN)/lib
	cp $(BIN)/sdl/libSDL2.a $(BIN)/lib


libs: libs-sdl

game: $(OBJ)
	$(CC) -o $(OUTPUT) $^ $(LDFLAGS)

%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)


clean:
	rm -rf $(BIN) $(OBJ)

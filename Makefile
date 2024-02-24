CC = clang
SRC = src/main.c
CFLAGS = -I/usr/include/SDL2
LDFLAGS = -lSDL2
BIN = bin
OUTPUT = $(BIN)/exe

all: $(OUTPUT)

$(OUTPUT): $(SRC)
	@mkdir -p $(BIN)
	$(CC) -o $@ $^ $(CFLAGS) $(LDFLAGS)

clean:
	rm -f $(OUTPUT)

.PHONY: all clean

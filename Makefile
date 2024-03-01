# Makefile to compile all .c files in src directory into one executable
# and link with the SDL static library using clang. Object files are placed in a subfolder within the bin directory.

# Compiler
CC = clang

# Compiler flags
CFLAGS = -Wall -O2

# Include directory for SDL headers
INCLUDES = -Ilib/SDL/include

# Library paths and the libraries to link with
LFLAGS = -Llib/SDL/lib
LIBS = -lSDL2

# Source files directory
SRCDIR = src

# Output directory for executable and object files
BINDIR = bin
OBJDIR = $(BINDIR)/obj

# Find all .c files in the src directory
SOURCES = $(wildcard $(SRCDIR)/*.c)

# Replace .c from SOURCES with .o and prefix with obj dir to get OBJECTS list
OBJECTS = $(patsubst $(SRCDIR)/%.c, $(OBJDIR)/%.o, $(SOURCES))

# Executable name
EXECUTABLE = $(BINDIR)/build

# Default target
all: directories $(EXECUTABLE)

# Ensure bin and obj directories exist
directories:
	@mkdir -p $(BINDIR) $(OBJDIR)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(CFLAGS) $(INCLUDES) -o $@ $^ $(LFLAGS) $(LIBS)

# Compile each .c to .o
$(OBJDIR)/%.o: $(SRCDIR)/%.c
	$(CC) $(CFLAGS) $(INCLUDES) -c $< -o $@

#Alias for build and run
run: all
	$(EXECUTABLE)
	


# Clean up bin directory
clean:
	rm -rf $(BINDIR)


.PHONY: all clean directories


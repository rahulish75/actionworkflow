# Define the compiler and flags
CC = gcc
CFLAGS = -Wall -g  # -Wall enables all warnings, -g includes debugging info

# Define the target executable and source files
TARGET = myprogram
SRCS = helloworld.c   # List all your .c files here
OBJS = $(SRCS:.c=.o)  # Automatically generate object files from the source files

# Default rule: compile and link the program
all: $(TARGET)

# Rule to build the target executable
$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

# Rule to compile the .c files into .o files
%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

# Clean up generated files
clean:
	rm -f $(TARGET) $(OBJS)

# Phony targets
.PHONY: all clean

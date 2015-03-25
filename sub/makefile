CC = g++
CFLAGS = -c -g -Wall
HEADERS = foo.h
OBJ = foo.o
BUILD = ../build/

all: move

move: $(OBJ) 
	cp *.o $(BUILD)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $<

clean:
	rm -f *.o

.PHONY: all clean $(BUILD)

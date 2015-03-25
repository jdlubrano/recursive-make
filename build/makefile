OBJ = bar.o foo.o main.o

all: $(OBJ)
	g++ -g -Wall -o exe $^

clean:
	rm -rf *.o exe

.PHONY: all clean

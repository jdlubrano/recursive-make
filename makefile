CC=g++
CFLAGS= -c -g -Wall
HEADERS = bar.h
SUBDIRS = sub baz
OBJ = main.o bar.o
BUILD = build

all: exe

exe: subdirs move
	$(MAKE) -C $(BUILD)

move: $(OBJ)
	cp *.o $(BUILD)

%.o: %.cpp
	$(CC) $(CFLAGS) -o $@ $<

subdirs: $(SUBDIRS)
	$(MAKE) -C $<
	
#$(SUBDIRS):
#	$(MAKE) -C $@

.PHONY: all clean subdirs $(SUBDIRS) $(BUILD)

clean: $(SUBDIRS)
	for dir in $(SUBDIRS); do \
          make clean -C $$dir; \
        done
	make clean -C $(BUILD)
	rm -f *.o

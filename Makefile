CC=gcc

LIBS=gobject-2.0

CFLAGS=-I. `pkg-config --cflags --libs $(LIBS)`

DEPS=gobject-sample.h

OBJ=gobject-sample.o

EXECUTABLE=gobject-sample

%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)

$(EXECUTABLE): $(OBJ)
	$(CC) -o $@ $^ $(CFLAGS)

clean:
	rm -vf *.o *~ $(EXECUTABLE)

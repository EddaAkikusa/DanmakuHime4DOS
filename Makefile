CC = ia16-elf-gcc
CFLAGS = -mcmodel=medium -O3
LDFLAGS= -mcmodel=medium -flto

TARGET = DMHIME.EXE

SRCS = main.c
OBJS = $(SRCS:%=%.o)

$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

%.c.o: %.c
	$(CC) -c $(CFLAGS) $< -o $@

all: $(TARGET)

.PHONY: clean
clean:
	rm *.o DMHIME.EXE

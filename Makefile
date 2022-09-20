OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o

all: smb2j.bin

build/wram.o: include/wram.s
	wla-6502 -o $@ $<

build/%.o: code/%.s
	wla-6502 -o $@ $<

smb2j.bin: $(OBJS) $(RAM_OBJS)
	wlalink -S linkfile $@

smb2j.fds: smb2j.bin
	python3 makeFds.py

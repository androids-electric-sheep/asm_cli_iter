main: main.o
	gcc -o main.bin main.o -no-pie
	rm main.o
main.o:
	nasm -f elf64 -g -F dwarf main.asm -o main.o
clean:
	rm -vf main.o main *.bin

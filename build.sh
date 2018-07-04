nasm -f elf32 kernel.asm -o kasm.o
gcc -m32 -c kernel.c -o kc.o
ld -m elf_i386 -T link.ld -o root/boot/kernel.bin kasm.o kc.o
qemu-system-i386 -kernel root/boot/kernel.bin
#grub-mkrescue -o Ccore.iso root/

read A

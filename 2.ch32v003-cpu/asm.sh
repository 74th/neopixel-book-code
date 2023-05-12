set -xe
pio run -t buildprog
~/.platformio/packages/toolchain-riscv/bin/riscv-none-embed-objdump -D .pio/build/ch32v003f4p6/src/main.o > main.asm
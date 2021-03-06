#include <msp430.h>

.equ        RAMEND, 0x0400

.text
main:
    ;disable watchdog timer
    mov     #WDTPW, r10
    xor     #WDTHOLD, r10
    mov     r10, &WDTCTL
    ;initialize stack
    mov     #RAMEND, r1
    ;code

forever:
    jmp     forever

.section    ".vectors", "a"
.org    0x1e
    .word   main

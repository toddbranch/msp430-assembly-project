.include "header.s"

.text
main:
    ;disable watchdog timer
    mov     #WDTPW, r10
    xor     #WDTHOLD, r10
    mov     r10, &WDTCTL
    ;code

forever:
    jmp     forever

.section    ".vectors", a
.org    0x1e
    .word   main

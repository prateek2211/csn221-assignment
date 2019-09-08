mov count 0
mov i 1
.loop:
        mov j i
        mov k i
        .l1:
            .l2:
                mul r1 j j
                mul r2 r1 j
                mul r3 k k
                mul r3 r3 k
                mov r5 0
                add r5 r2 r3
                cmp r5 i
                beq .cntIncrease
                sub k k 1
                cmp k 0
                bgt .l2
            sub j j 0
            bgt .l1
    cmp count 2
    bgt .exit
    add i i 1
    .cntIncrease:
        add count count 1
    .exit:
        Exit
    mov count 0
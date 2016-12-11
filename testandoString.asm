 .text
       # printa o score
    # $a0=inteiro
    # $a1=coluna
    # $a2=linha
    # $a3=cores
    li   $v0, 101
    li   $a0, 125
    li   $a1, 2
    li   $a2, 3
    li   $a3, 0xabc
    syscall
    
    li $v0, 10
    syscall
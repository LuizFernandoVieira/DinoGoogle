.data

  txt: .asciiz "nintendo.txt"
  
  .eqv  DINO_RAM 0x10010100

.text

  main:
    
  
    li $v0, 10
    syscall
    

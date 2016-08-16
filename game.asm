################################################################################
# JOGO - ORGANIZACAO E ARQUITETURA DE COMPUTADORES
# AUTOR - LUIZ FERNANDO VIEIRA DE CASTRO FERREIRA
.data
img:    .asciiz "dino.bin"
input:  .asciiz "Teve Input !!! \n"
ninput: .asciiz "... \n"

.text
main:
  jal carregar_imagem

  # jal  checa_input            # jump to captura_input e salva posição no $ra
  # j    main                   # jump main

################################################################################
# Input/Output MARS
# Link útil - http://inst.eecs.berkeley.edu/~cs61cl/fa08/labs/lab25.html
# O interpretador MARS simula um único dispositivo de entrada e saída
# Possui uma memória mapeada (keyboard + display)
# Ela funciona da seguinte forma
# O receptor lê characters do keyboard
# E o transmissor escreve characters para o display
# Cada um destes possui uma registrador (uma word) para control e uma para data
# Elas são acessadas por addresses de 0xFFFF0000 até 0xFFFF000C
# Receiver control    - 0xffff0000    -> quando esta word estiver pronta
# Receiver data       - 0xffff0004    -> o dado de input sera escrito nessa
# Transmitter control - 0xffff0008
# Transmitter data    - 0xffff000c

checa_input:
  li	  $t0, 0xffff0000	        # Carrega o conteúdo do receiver control para $t0
  pooling:                      # Waiting for the corresponding device
    lw    $t1, 0($t0)	          # To set its control "ready" bit (0xffff0000)
  	andi	$t1, $t1, 0x0001      # Sei sim
  	beq	  $t1, $0, pooling      # Se o "ready" bit não tiver pronto continua w8
  	lw	  $v0, 4($t0)	          # Quando fica pronto $v0 recebe o data register
    li    $t2, 20               # Coloca o keycode da tecla SPACE em $t2
    beq   $v0, $t2, jump        # if SPACE then jump
    aux:
      jr    $ra                   # jump de volta para main em dorme

jump:
  li    $v0, 4                # 4 é o syscall para printar
  la    $t1, input            # $a0 é o endereço do que você deseja printar
  syscall                     # else printa que nao teve
  j     aux                   # jump to aux


# volta para depois do jal checa_input
#
# trata_input:
#   li    $v0, 4                # 4 é o syscall para printar
#   lw    $a0, 4($t0)           # $a0 é o endereço do que você deseja printar
#   # la    $a0, input          # $a0 é o endereço do que você deseja printar
#   syscall                     # print Teve Input !!!
#   jr     $ra                  # volta para depois do jal checa_input

dorme:
  ori $v0, $zero, 32		      # 32 é o syscall para sleep
	ori $a0, $zero, 60  		    # $a0 é a quantidade de miliseconds que dorme
	syscall                     # dorme por 60 milisegundos
	jr    $ra                   # volta para depois do jal dorme da main

carregar_imagem:
  li    $v0, 13               # 13 é o syscall para abrir arquivos
  la    $a0, img              # endereco da string contendo nome do arquivo
  li    $a1, 0                # flag = aberto para leitura
  li    $a2, 0                # modo ignorado
  syscall                     # abre o arquivo
  move  $s0, $v0              # salva o descriptor do arquivo em $v0

  addi  $t1, $t1, 786432      # 512x512 6x16 = 256
  la    $t2, 0x10040000       # heap

  loop:
    li    $v0, 14             # 14 é o syscall para ler o arquivo
    la    $a0, 0($s0)         # descriptor do arquivo
    la    $a1, 0($t2)         # endereco do buffer de input
    li    $a2, 3              # numero maximo de caracteres para ler
    syscall                   # $v0 contem o numero de characteres lidos

    lw    $t3, 0($t2)         # coloca branco(ffffff) na posicao de memoria
    andi  $t3, $t3, 0xffffff  # correspondente ao $t3 que contem a posicao
    sw    $t3, 0($t2)         # de memoria do iterador

    addi  $t2, $t2, 4         # soma 4 bytes (1 word) ao registrador $t2(heap)
    addi  $s1, $s1, 3         # soma 3 bytes ao $s1
    bne   $s1, $t1, loop      # if nao chegou ao final da imagem then continua

  jr    $ra                   # volta para a main

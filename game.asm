################################################################################
# JOGO - ORGANIZACAO E ARQUITETURA DE COMPUTADORES
# AUTOR - LUIZ FERNANDO VIEIRA DE CASTRO FERREIRA
# https://xem.github.io/3DShomebrew/tools/image-to-bin.html
.data
  img:    .asciiz "nintendo.bin"
  input:  .asciiz "Teve Input !!! \n"
  ninput: .asciiz "... \n"

  zzz:    .asciiz "... \n"
  mime:  .asciiz "dorme \n"
  change: .asciiz "CHANGE STATE \n"

  .eqv  BASE_DISPLAY        0x10040000
  .eqv  DISPLAY_NEXT_LINE   0x140 #320 # 0x200 #512

  .eqv  DINO_RAM            0x10010100
  .eqv  DINO_POS            0x10040024
  .eqv  DINO_WIDTH          260
  .eqv  DINO_HEIGHT         43

.text
main:
  load:
    jal   load_dino
    la    $a1, DINO_RAM
    la    $a2, DINO_POS
    li    $s0, DINO_POS

    li    $s7, 0 # game state

  update:
    jal   teste

  render:
    jal   limpa_tela

    # verificando o estado atual e chamando
    # o render para aquele estado
    li  $t0, 1

    beq $s7, $zero, intro_state # if game state 0
    beq $s7, $t0, menu_state    # if game state 1
    j nenhum_state              # else

###
# INTRO
###
  intro_state:
    la    $a1, DINO_RAM
    addi  $s0, $s0, 1920 # 960  # 240 x 4
    move  $a2, $s0
    jal   draw_sprite
    la    $t0, DINO_POS
    addi  $t0, $t0, 33250 # 33250 # 950 x 35
    bgt   $s0, $t0, change_to_menu_state #se foi tal muda de estado
    j nenhum_state

  change_to_menu_state:
    li    $v0, 4
    la    $a0, change
    syscall
    li    $s7, 1
    j nenhum_state

###
# MENU
###
  menu_state:

    j nenhum_state

###
# NENHUM
###
  nenhum_state:
    # nao faz nada
  sleep:
    jal   dorme
    j     update
    j     end_game

teste:
  jr    $ra


################################################################################
# Carregar Imagem do Dino
#
#
#

load_dino:
  li    $v0, 13               # 13 é o syscall para abrir arquivos
  la    $a0, img              # endereco da string contendo nome do arquivo
  li    $a1, 0                # flag = aberto para leitura
  li    $a2, 0                # modo ignorado
  syscall                     # abre o arquivo

  move  $a0, $v0              # $a0 é o file descriptor

  li    $t1, DINO_WIDTH
  li    $t2, DINO_HEIGHT
  mult  $t1, $t2

  li    $v0, 14               # 14 é o syscall para leitura do arquivo
  li    $a1, DINO_RAM         # $a1 = buffer, posição da memória que será colocado
  mflo  $a2                   # 32 least significant bits of multiplication # $a2 = cout (IMAGE_WIDTH X IMAGE_HEIGHT = 86x86 = 7396)
  syscall

  jr    $ra                   # Termina o carregamento da imagem para a memória

################################################################################
# Desenha Sprite
# $a1 = endereco na RAM
# $a2 = endereco no display (heap)
# Percorre os pixels do canto superior esquerdo da imagem até o canto superior
# direito. Ao fim desta linha percorre a próxima e assim por diante até que
# chega no final da imagem
# Ignora pixels com coloração
# R = 254
# G = 189
# B = 88
# HEX = FEBD58
#

draw_sprite:
  li    $t1, DINO_WIDTH                    # Carrega em $t1 o width da imagem do dino
  li    $t2, DINO_HEIGHT                   # Carrega em $t2 o height da imagem do dino

draw_sprite_loop:
  beq   $t1, $zero, fim_loop_desenha_dino  # if ja passou por todos os pixels do width then fim_loop_desenha_dino
  lbu   $t3, 0($a1)                        # Carrega em $t3 o endereco do dino na RAM ($t3 agora guarda um pixel)
  addi  $t4, $zero, 0xEB                   # Salva o valor da cor rosa no registrador $t4
  beq   $t3, $t4, draw_sprite_jump_pixel   # Se o pixel for da cor rosa então pula aquele pixel (transparencia)
  sb    $t3, 0($a2)                        # "Desenha", no display, o pixel pego quando dado lb

draw_sprite_jump_pixel:
	addi  $t1, $t1, -1                       # Agora falta width-1 para acabar de percorrer a imagem
  addi  $a1, $a1, 1                        # O registrador $a1 terá o próximo pixel salvo na RAM
  addi $a2, $a2, 1                         # Prepara o próximo pixel que será mostrado no display
  j draw_sprite_loop                       # Volta a desenhar os proximos pixels que faltam

fim_loop_desenha_dino:
  addi  $t2, $t2, -1                       # Falta height-1 pixels para o fim do desenho
  li    $t1, DINO_WIDTH                    # Vai para o primeiro column da row X
  beq   $t2, $zero, draw_sprite_end        # Se chegou ao height máximo da imagem termina o desenho
  addi  $a2, $a2, -DINO_WIDTH              # Voltamos $a2 para a primeira colmun daquele row
  addi  $a2, $a2, DISPLAY_NEXT_LINE        # Pulamos para o próximo row
  j draw_sprite_loop                       # Volta a desenhar aquela row da imagem

draw_sprite_end:
  jr    $ra                                # Acaba a subrotina de desenhar o sprite

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

# Atualizado
# 0xff000000

  checa_input:
    li	  $t0, 0xff100000	        # Carrega o conteúdo do receiver control para $t0
    pooling:                      # Waiting for the corresponding device
      lw    $t1, 0($t0)	          # To set its control "ready" bit (0xffff0000)
      andi	$t1, $t1, 0x0001      # Sei sim
      beq	  $t1, $0, pooling      # Se o "ready" bit não tiver pronto continua w8
      lw	  $v0, 4($t0)	          # Quando fica pronto $v0 recebe o data register
      li    $t7, 0xff10000c

      li    $t2, 20               # Coloca o keycode da tecla SPACE em $t2
      beq   $v0, $t2, movimenta   # if SPACE then jump
    bla:
      sw    $v0, 0($t7)
      jr    $ra

  movimenta:
    addi    $t1, $zero, DINO_POS
    addi    $t1, $t1, 4
    j bla


limpa_tela:
  li $t0, BASE_DISPLAY
  li $t1, 0xFFFFFFFF
  li $t2, 307200 # 76800 x 4 = 320 x 240 x 4
  li $t3, 0
limpa_tela_loop:
  sw $t1, 0($t0)
  addi $t3, $t3, 4
  addi $t0, $t0, 4
  bne $t2, $t3, limpa_tela_loop
  jr $ra



  ################################################################################
  # Dorme
  #
  #
  #

  dorme:
    li    $v0, 4
    la    $a0, mime
    syscall
    ori    $v0, $zero, 32		     # 32 é o syscall para sleep
    ori    $a0, $zero, 60  		   # $a0 é a quantidade de miliseconds que dorme
    syscall                      # dorme por 60 milisegundos
    jr     $ra                   # volta para depois do jal dorme da main

################################################################################
# Termina o Jogo
#
#
#
end_game:
  li   $v0, 16       # system call para fechar o arquivo
  move $a0, $s6      # fecha o descriptor do arquivo
  syscall
  li    $v0, 10      # $v0 =
  syscall

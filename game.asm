################################################################################
# JOGO - ORGANIZACAO E ARQUITETURA DE COMPUTADORES
# AUTOR - LUIZ FERNANDO VIEIRA DE CASTRO FERREIRA
# https://xem.github.io/3DShomebrew/tools/image-to-bin.html

.data
  a1:    .asciiz "i1.bin"
  a2:    .asciiz "i1.bin"
  a3:    .asciiz "i2.bin"
  a4:    .asciiz "i3.bin"
  a5:    .asciiz "i4.bin"
  a6:    .asciiz "i5.bin"
  a7:    .asciiz "i6.bin"
  a8:    .asciiz "i7.bin"
  a9:    .asciiz "i8.bin"
  a10:   .asciiz "i9.bin"
  a11:   .asciiz "i10.bin"
  a12:   .asciiz "i11.bin"
  a13:   .asciiz "i12.bin"
  a14:   .asciiz "i13.bin"
  a15:   .asciiz "i14.bin"
  a16:   .asciiz "i15.bin"
  a17:   .asciiz "i16.bin"
  a18:   .asciiz "i17.bin"
  a19:   .asciiz "i18.bin"
  a20:   .asciiz "i19.bin"
  a21:   .asciiz "i20.bin"
  a22:   .asciiz "i21.bin"
  a23:   .asciiz "i22.bin"
  a24:   .asciiz "i23.bin"
  a25:   .asciiz "i24.bin"
  a26:   .asciiz "i25.bin"
  a27:   .asciiz "i26.bin"
  a28:   .asciiz "i27.bin"
  a29:   .asciiz "i28.bin"
  a30:   .asciiz "i29.bin"
  a31:   .asciiz "i30.bin"
  a32:   .asciiz "i31.bin"
  a33:   .asciiz "i32.bin"
  a34:   .asciiz "i33.bin"
  a35:   .asciiz "i34.bin"
  a36:   .asciiz "i35.bin"
  a37:   .asciiz "i36.bin"
  a38:   .asciiz "i37.bin"
  a39:   .asciiz "i38.bin"
  a40:   .asciiz "i39.bin"
  a41:   .asciiz "i40.bin"
  a42:   .asciiz "i41.bin"
  a43:   .asciiz "i42.bin"
  a44:   .asciiz "i43.bin"
  a45:   .asciiz "i44.bin"
  a46:   .asciiz "i45.bin"
  a47:   .asciiz "i46.bin"
  a48:   .asciiz "i47.bin"
  a49:   .asciiz "i48.bin"
  a50:   .asciiz "i49.bin"
  a51:   .asciiz "i50.bin"
  a52:   .asciiz "i51.bin"
  a53:   .asciiz "i52.bin"
  a54:   .asciiz "i53.bin"
  a55:   .asciiz "i54.bin"
  a56:   .asciiz "i55.bin"
  a57:   .asciiz "i56.bin"
  a58:   .asciiz "i57.bin"
  a59:   .asciiz "i58.bin"
  a60:   .asciiz "i59.bin"

  nintendo_img: .asciiz "nintendo.bin"
  menu_img: .asciiz "menu.bin"
  seta_img: .asciiz "seta.bin"
  bg1_img:  .asciiz "bg1.bin"
  bg2_img:  .asciiz "bg2.bin"
  bg3_img:  .asciiz "bg3.bin"
  bg4_img:  .asciiz "bg4.bin"
  p1_img:   .asciiz "p1.bin"
  p2_img:   .asciiz "p2.bin"
  p3_img:   .asciiz "p3.bin"
  p4_img:   .asciiz "p4.bin"
  p5_img:   .asciiz "p5.bin"
  p6_img:   .asciiz "p6.bin"
  p7_img:   .asciiz "p7.bin"
  pp_img:   .asciiz "pp.bin"

  # DISPLAY
  .eqv  BASE_DISPLAY        0x10040000
  .eqv  DISPLAY_NEXT_LINE   0x140 #320 # 0x200 #512

  # NINTENDO
  .eqv  NINTENDO_RAM     0x10010500
  .eqv  NINTENDO_POS     0x10040024
  .eqv  NINTENDO_WIDTH   260
  .eqv  NINTENDO_HEIGHT  43

  # MENU
  .eqv  MENU_RAM         0x100130AC
  .eqv  MENU_POS         0x10040000
  .eqv  MENU_WIDTH       320
  .eqv  MENU_HEIGHT      240

  # GAME 1 PLAYER
  .eqv  GAME_BG_1_PLAYER_RAM    0x10025CAC
  .eqv  GAME_BG_1_PLAYER_POS    0x10040000
  .eqv  GAME_BG_1_PLAYER_WIDTH  320
  .eqv  GAME_BG_1_PLAYER_HEIGHT 240

  # GAME 2 PLAYER
  .eqv  GAME_BG_2_PLAYER_RAM    0x10025CAC
  .eqv  GAME_BG_2_PLAYER_POS    0x10040000
  .eqv  GAME_BG_2_PLAYER_WIDTH  320
  .eqv  GAME_BG_2_PLAYER_HEIGHT 240

  # GAME 3 PLAYER
  .eqv  GAME_BG_3_PLAYER_RAM    0x10025CAC
  .eqv  GAME_BG_3_PLAYER_POS    0x10040000
  .eqv  GAME_BG_3_PLAYER_WIDTH  320
  .eqv  GAME_BG_3_PLAYER_HEIGHT 240

  # GAME 4 PLAYER
  .eqv  GAME_BG_4_PLAYER_RAM     0x10025CAC
  .eqv  GAME_BG_4_PLAYER_POS     0x10040000
  .eqv  GAME_BG_4_PLAYER_WIDTH   320
  .eqv  GAME_BG_4_PLAYER_HEIGHT  240

  # SETA
  .eqv  SETA_RAM         0x100388AC
  .eqv  SETA_POS_1       0x1004ce71
  .eqv  SETA_POS_2       0x1004cee5
  .eqv  SETA_POS_3       0x1004ec71
  .eqv  SETA_POS_4       0x1004f0a5
  .eqv  SETA_WIDTH       8
  .eqv  SETA_HEIGHT      8

  # PECAS
  .eqv  PECA_POS           0x10040040
  .eqv  PECA_WIDTH         8
  .eqv  PECA_HEIGHT        8
  .eqv  PECA_1_RAM         0x100388EC # PECA 1
  .eqv  PECA_2_RAM         0x1003892C # PECA 2
  .eqv  PECA_3_RAM         0x1003896C # PECA 3
  .eqv  PECA_4_RAM         0x100389AC # PECA 4
  .eqv  PECA_5_RAM         0x100389EC # PECA 5
  .eqv  PECA_6_RAM         0x10038A2C # PECA 6
  .eqv  PECA_7_RAM         0x10038A6C # PECA 7
  .eqv  PECA_PRETA_RAM     0x10038AAC # PECA X

  # END ANIM
  .eqv  END_ANIM_RAM      0x10025CAC
  .eqv  END_ANIM_POS      0x10040000
  .eqv  END_ANIM_WIDTH    320
  .eqv  END_ANIM_HEIGHT   240

.text
main:
  load:
    la  $a0, nintendo_img
    la  $a1, NINTENDO_RAM
    la  $a2, NINTENDO_WIDTH
    la  $a3, NINTENDO_HEIGHT
    jal load_image

    la  $a0, menu_img
    la  $a1, MENU_RAM
    la  $a2, MENU_WIDTH
    la  $a3, MENU_HEIGHT
    jal load_image

    la  $a0, seta_img
    la  $a1, SETA_RAM
    la  $a2, SETA_WIDTH
    la  $a3, SETA_HEIGHT
    jal load_image

    la    $a1, NINTENDO_RAM
    la    $a2, NINTENDO_POS
    li    $s0, NINTENDO_POS

    li    $s7, 0 # game state

  update:
    jal   checa_input

  render:
    li    $t0, 0
    bne   $s7, $zero, pula_limpa_tela
    jal   limpa_tela
    move  $a0, $s0
    la    $a1, NINTENDO_WIDTH
    la    $a2, NINTENDO_HEIGHT
    jal   limpa_area

  pula_limpa_tela:

    # verificando o estado atual e chamando
    # o render para aquele estado
    li  $t0, 1
    li  $t1, 2
    li  $t2, 3

    beq $s7, $zero, intro_state # if game state 0
    beq $s7, $t0, menu_state    # if game state 1
    beq $s7, $t1, game_state    # if game state 2
    beq $s7, $t2, end_state     # if game state 3
    j nenhum_state              # else

###
# INTRO
###
  intro_state:
    la    $a1, NINTENDO_RAM
    addi  $s0, $s0, 1920 # 960  # 240 x 4
    move  $a2, $s0

    la    $a0, NINTENDO_WIDTH
    la    $a3, NINTENDO_HEIGHT
    jal   draw_sprite

    jal dorme

    la    $t0, NINTENDO_POS
    addi  $t0, $t0, 33250 # 33250 # 950 x 35
    bgt   $s0, $t0, change_to_menu_state #se foi tal muda de estado
    j nenhum_state

  change_to_menu_state:
    li $a2, 0
    li $a3, 100

    li $v0, 31
    li $a0, 77
    li $a1, 900
    syscall

    li $v0, 33
    li $a0, 0
    li $a1, 200
    syscall

    li $v0, 33
    li $a0, 84
    li $a1, 700
    syscall

    li    $s7, 1
    li    $s6, 1
    j nenhum_state

###
# MENU
###
  menu_state:

  menu_state_render:
    li    $a1, MENU_RAM    # $a1 = endereco na RAM
    li    $a2, MENU_POS    # $a2 = endereco no display (heap)
    li    $a0, MENU_WIDTH  # $a0 = width
    li    $a3, MENU_HEIGHT # $a3 = height
    jal   draw_sprite

    # verificando o valor em $s0
    # para escolher a pos da seta
    li  $t0, 1
    li  $t1, 2
    li  $t2, 3
    li  $t3, 4

    beq $s6, $t0, case_1   # if 1 player
    beq $s6, $t1, case_2   # if 2 player
    beq $s6, $t2, case_3   # if 3 player
    beq $s6, $t3, case_4   # if 3 player

  case_1:
    li  $a2, SETA_POS_1
    j   temp
  case_2:
    li  $a2, SETA_POS_2
    j   temp
  case_3:
    li  $a2, SETA_POS_3
    j   temp
  case_4:
    li  $a2, SETA_POS_4
    j   temp

  temp:
    li    $a1, SETA_RAM    # $a1 = endereco na RAM
    li    $a0, SETA_WIDTH  # $a0 = width
    li    $a3, SETA_HEIGHT # $a3 = height
    jal   draw_sprite
    j     nenhum_state

  chance_game_state_1:
    la  $a0, bg1_img
    la  $a1, GAME_BG_1_PLAYER_RAM
    la  $a2, GAME_BG_1_PLAYER_WIDTH
    la  $a3, GAME_BG_1_PLAYER_HEIGHT
    jal load_image
    li    $s7, 2
    j load_game_state

  chance_game_state_2:
    la  $a0, bg2_img
    la  $a1, GAME_BG_2_PLAYER_RAM
    la  $a2, GAME_BG_2_PLAYER_WIDTH
    la  $a3, GAME_BG_2_PLAYER_HEIGHT
    jal load_image
    li    $s7, 2
    j load_game_state

  chance_game_state_3:
    la  $a0, bg3_img
    la  $a1, GAME_BG_3_PLAYER_RAM
    la  $a2, GAME_BG_3_PLAYER_WIDTH
    la  $a3, GAME_BG_3_PLAYER_HEIGHT
    jal load_image
    li    $s7, 2
    j load_game_state

  chance_game_state_4:
    la  $a0, bg4_img
    la  $a1, GAME_BG_4_PLAYER_RAM
    la  $a2, GAME_BG_4_PLAYER_WIDTH
    la  $a3, GAME_BG_4_PLAYER_HEIGHT
    jal load_image
    li    $s7, 2
    j load_game_state

###
# GAME
###
  load_game_state:
    la  $a2, PECA_WIDTH
    la  $a3, PECA_HEIGHT

    la  $a0, p1_img
    la  $a1, PECA_1_RAM
    jal load_image

    la  $a0, p2_img
    la  $a1, PECA_2_RAM
    jal load_image

    la  $a0, p3_img
    la  $a1, PECA_3_RAM
    jal load_image

    la  $a0, p4_img
    la  $a1, PECA_4_RAM
    jal load_image

    la  $a0, p5_img
    la  $a1, PECA_5_RAM
    jal load_image

    la  $a0, p6_img
    la  $a1, PECA_6_RAM
    jal load_image

    la  $a0, p7_img
    la  $a1, PECA_7_RAM
    jal load_image

  cria_peca:
    li  $t5, 0xff000020
    li  $t7, 0xff000038

    # depende do rand
    li  $t0, 24968
    li  $t1, 24976
    li  $t2, 24984
    li  $t3, 24992

    addi $s0, $s0, 1

    li   $a1, 7
    lw   $t6, 0($t7)
    lw   $a0, 0($t7)  # seed aleatoria
    addi $t6, $t6, 1
    sw   $t6, 0($t7)

    bne $t6, 8, nao_reseta_seed
    add $t6, $zero, $zero
    sw  $t6, 0($t7)
  nao_reseta_seed:
    # li $v0, 1   # 1 is the system call code to show an int number
    # syscall

    move  $t4, $a0

    sw  $t0, 0($t5)
    sw  $t1, 4($t5)
    sw  $t2, 8($t5)
    sw  $t3, 12($t5)
    sw  $t4, 16($t5)

    j game_state

  game_state:
    li  $t0, 1
    li  $t1, 2
    li  $t2, 3
    li  $t3, 4

  aux:
    beq $s6, $t0, game_state_1   # if 1 player
    beq $s6, $t1, game_state_2   # if 2 player
    beq $s6, $t2, game_state_3   # if 3 player
    beq $s6, $t3, game_state_4   # if 4 player

  volta_game_state:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal  desenha_pecas_antigas
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    li  $t7, 0x10040000
    li  $t5, 0xff000020
    lw  $s0, 0($t5)
    lw  $s1, 4($t5)
    lw  $s2, 8($t5)
    lw  $s3, 12($t5)
    lw  $s4, 16($t5)

    li    $a0, PECA_HEIGHT # $a0 = width
    li    $a3, PECA_WIDTH  # $a3 = height

  pula_0:
    li    $t0, 1
    bne   $s4, $t0, pula_1
    li    $a1, PECA_1_RAM
    j     pula_tudo
  pula_1:
    li    $t0, 2
    beq   $s4, $t0, pula_2
    li    $a1, PECA_2_RAM
    j     pula_tudo
  pula_2:
    li    $t0, 3
    beq   $s4, $t0, pula_3
    li    $a1, PECA_3_RAM
    j     pula_tudo
  pula_3:
    li    $t0, 4
    beq   $s4, $t0, pula_4
    li    $a1, PECA_4_RAM
    j     pula_tudo
  pula_4:
    li    $t0, 5
    beq   $s4, $t0, pula_5
    li    $a1, PECA_5_RAM
    j     pula_tudo
  pula_5:
    li    $t0, 6
    beq   $s4, $t0, pula_6
    li    $a1, PECA_6_RAM
    j     pula_tudo
  pula_6:
    li    $t0, 7
    beq   $s4, $t0, pula_tudo
    li    $a1, PECA_7_RAM

  pula_tudo:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal  desenha_pecas_atuais
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    li    $t5, 0xff000020

    li    $t4, 65928                # borders do mapa
    slt   $t6, $s0, $t4
    beq   $t6, $zero, preve_colisao # PASSA QUANDO AINDA PODE DESCER
    slt   $t6, $s1, $t4
    beq   $t6, $zero, preve_colisao
    slt   $t6, $s2, $t4
    beq   $t6, $zero, preve_colisao
    slt   $t6, $s3, $t4
    beq   $t6, $zero, preve_colisao

    addi  $s0, $s0, 2560
    addi  $s1, $s1, 2560
    addi  $s2, $s2, 2560
    addi  $s3, $s3, 2560

    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

    j     nenhum_state

  desenha_pecas_antigas:
    li   $t1, 18		            # inicializa y = 17
    la   $t5, 0xff000012        # último byte

  FOR1:
    lb   $t0, 0($t5)	          # le o byte a ser avaliado
    addi $t5, $t5, -1           # byte anterior
    addi $t1, $t1, -1	          # decrementa y

    li   $t2, 8 	 	            # inicializa x
    beq  $t1, $zero, CLOSE

  FOR2:
    addi $t2, $t2, -1	          # decrementa x
    li   $t3, 1		              # inicializa comparador
    and  $t3, $t3, $t0	        # pega primeiro bit do byte
    srl  $t0, $t0, 1	          # coloca o segundo bit como primeiro

    beq  $t3, $zero, END_FOR2

    move $t4 $t2		            # operações do x feitas no $t4
    move $t6, $t1		            # operações do y feitas no $t6

    # fix pra y (a ideia aqui é que a colisao é prevista, ou seja,
    # se vamos preve-la o bloco deve ser colocado no lugar que ele
    # estaria quando colide e nao no lugar que ele realmente esta)
    # addi $t6, $t6, 1

    addi $t6, $t6, 1       	    # y+1
    addi $t4, $t4, 1       	    # x+1
    li   $t7, 8
    mul  $t4, $t4, $t7          # (x+1)*8
    mul  $t6, $t6, $t7	        # y*8
    li   $t7, 70
    add  $t6, $t6, $t7	        # (y*8)+70
    li   $t7, 320
    mul  $t6, $t6, $t7	        # ((y*8)+70)*320
    add  $t6, $t6, $t4	        # ((y*8)+70)*320 + (x+1)*8
    la   $t7, BASE_DISPLAY
    add  $t6, $t6, $t7	        # ((y*8)+70)*320 + (x+1)*8 + POS_DISPLAY

    # BACKUP DE REGISTRADORES IMPORTANTES
    addi $sp, $sp, -20          # salva registradores importantes antes de enviar
    sw   $ra, 0($sp)
    sw   $t0, 4($sp)            # salva o byte que estou usando atualmente
    sw   $t1, 8($sp)            # salva o meu y atual
    sw   $t2, 12($sp)           # salva o meu x atual
    sw   $t5, 16($sp)           # salva o endereço do byte do próximo loop

    # LOAD
    la   $a0, pp_img
    la   $a1, PECA_PRETA_RAM
    la   $a2, PECA_WIDTH
    la   $a3, PECA_HEIGHT
    jal  load_image

    li $v0, 1
    syscall

    # PRINTA
    move $a2, $t6
    la   $a0, PECA_WIDTH
    la   $a1, PECA_PRETA_RAM    # TODO: como agr eu salvo na pilha do load_image, essa linha pode ser apagada
    la   $a3, PECA_HEIGHT       # TODO: como agr eu salvo na pilha do load_image, essa linha pode ser apagada
    jal  draw_sprite

    # RESTAURA REGISTRADORES IMPORTANTES
    lw   $t5, 16($sp)           # salva o endereço do byte do próximo loop
    lw   $t2, 12($sp)           # salva o meu x atual
    lw   $t1, 8($sp)            # salva o meu y atual
    lw   $t0, 4($sp)            # salva o byte que estou usando atualmente
    lw   $ra, 0($sp)
    addi $sp, $sp, 20

END_FOR2:
    beq $t2, $zero, FOR1        # finaliza o FOR
    j FOR2

  CLOSE:
    jr $ra

  desenha_pecas_atuais:
    add   $a2, $s0, $t7
    addi  $sp, $sp, -4
    sw    $ra, 0($sp)
    jal   draw_sprite
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    add   $a2, $s1, $t7
    addi  $sp, $sp, -4
    sw    $ra, 0($sp)
    jal   draw_sprite
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    add   $a2, $s2, $t7
    addi  $sp, $sp, -4
    sw    $ra, 0($sp)
    jal   draw_sprite
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    add   $a2, $s3, $t7
    addi  $sp, $sp, -4
    sw    $ra, 0($sp)
    jal   draw_sprite
    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    jr   $ra

  preve_colisao:
    addi  $sp, $sp, -4
    sw    $ra, 0($sp)

    li    $a0, 0xff000000

    move  $a1, $s0
    jal   escreve_na_matrix

    move  $a1, $s1
    jal   escreve_na_matrix

    move  $a1, $s2
    jal   escreve_na_matrix

    move  $a1, $s3
    jal   escreve_na_matrix

    move  $s4, $zero # zera a peca isso ira implicar no surgimento de outra peca
    j cria_peca

    lw    $ra, 0($sp)
    addi  $sp, $sp, 4

    j     nenhum_state

  nova_peca:
    j   aux

  game_state_1:
    li    $a1, GAME_BG_1_PLAYER_RAM    # $a1 = endereco na RAM
    li    $a2, GAME_BG_1_PLAYER_POS    # $a2 = endereco no display (heap)
    li    $a0, GAME_BG_1_PLAYER_WIDTH  # $a0 = width
    li    $a3, GAME_BG_1_PLAYER_HEIGHT # $a3 = height
    jal   draw_sprite
    j     volta_game_state

  game_state_2:
    li    $a1, GAME_BG_2_PLAYER_RAM    # $a1 = endereco na RAM
    li    $a2, GAME_BG_2_PLAYER_POS    # $a2 = endereco no display (heap)
    li    $a0, GAME_BG_2_PLAYER_WIDTH  # $a0 = width
    li    $a3, GAME_BG_2_PLAYER_HEIGHT # $a3 = height
    jal   draw_sprite
    j     volta_game_state

  game_state_3:
    li    $a1, GAME_BG_3_PLAYER_RAM    # $a1 = endereco na RAM
    li    $a2, GAME_BG_3_PLAYER_POS    # $a2 = endereco no display (heap)
    li    $a0, GAME_BG_3_PLAYER_WIDTH  # $a0 = width
    li    $a3, GAME_BG_3_PLAYER_HEIGHT # $a3 = height
    jal   draw_sprite
    j     volta_game_state

  game_state_4:
    li    $a1, GAME_BG_4_PLAYER_RAM    # $a1 = endereco na RAM
    li    $a2, GAME_BG_4_PLAYER_POS    # $a2 = endereco no display (heap)
    li    $a0, GAME_BG_4_PLAYER_WIDTH  # $a0 = width
    li    $a3, GAME_BG_4_PLAYER_HEIGHT # $a3 = height
    jal   draw_sprite
    j     volta_game_state

  change_end_state:
    li    $s5, 0
    j     end_state

#######
# a0 = pos inicial da matriz
# a1 = pos da peça
# t3 = x
# t4 = y
escreve_na_matrix:
    li   $t0, 320
    div  $a1, $t0
    mfhi $t3
    mflo $t4
    addi $t3, $t3, -8

    li   $t0, 8
    div  $t3, $t0
    mflo $t3

    addi $t4, $t4, -70
    li   $t0, 8
    div  $t4, $t0
    mflo $t4
    move  $t5, $a0

    addu  $t5, $t5, $t4
    lb   $t6, 0($t5)
    li   $t7, 128
    srlv $t7, $t7, $t3
    or   $t6, $t6, $t7
    sb   $t6, 0($t5)

    jr $ra

###
# END
###
  end_state:
  end_anim:
    li   $t0, 25

    beq  $s5, $t0, end_game
    addi $s5, $s5, 1

    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT

    li   $t1, 1
    li   $t2, 2
    li   $t3, 3
    li   $t4, 4
    li   $t5, 5
    li   $t6, 6
    li   $t7, 7
    li   $t8, 8
    li   $t9, 9
    beq  $s5, $zero, end_anim_draw_1
    beq  $s5, $t1, end_anim_draw_2
    beq  $s5, $t2, end_anim_draw_3
    beq  $s5, $t3, end_anim_draw_4
    beq  $s5, $t4, end_anim_draw_5
    beq  $s5, $t5, end_anim_draw_6
    beq  $s5, $t6, end_anim_draw_7
    beq  $s5, $t7, end_anim_draw_8
    beq  $s5, $t8, end_anim_draw_9

    li   $t1, 10
    li   $t2, 11
    li   $t3, 12
    li   $t4, 13
    li   $t5, 14
    li   $t6, 15
    li   $t7, 16
    beq  $s5, $t1, end_anim_draw_10
    beq  $s5, $t2, end_anim_draw_11
    beq  $s5, $t3, end_anim_draw_12
    beq  $s5, $t4, end_anim_draw_13
    beq  $s5, $t5, end_anim_draw_14
    beq  $s5, $t6, end_anim_draw_15
    beq  $s5, $t7, end_anim_draw_16

    li   $t1, 17
    li   $t2, 18
    li   $t3, 19
    li   $t4, 20
    li   $t5, 21
    li   $t6, 22
    li   $t7, 23
    beq  $s5, $t1, end_anim_draw_17
    beq  $s5, $t2, end_anim_draw_18
    beq  $s5, $t3, end_anim_draw_19
    beq  $s5, $t4, end_anim_draw_20
    beq  $s5, $t5, end_anim_draw_21
    beq  $s5, $t6, end_anim_draw_22
    beq  $s5, $t7, end_anim_draw_23

    li   $t1, 24
    li   $t2, 25
    li   $t3, 26
    li   $t4, 27
    li   $t5, 28
    li   $t6, 29
    li   $t7, 30
    beq  $s5, $t1, end_anim_draw_24
    beq  $s5, $t2, end_anim_draw_25
    beq  $s5, $t3, end_anim_draw_26
    beq  $s5, $t4, end_anim_draw_27
    beq  $s5, $t5, end_anim_draw_28
    beq  $s5, $t6, end_anim_draw_29
    beq  $s5, $t7, end_anim_draw_30

    li   $t1, 31
    li   $t2, 32
    li   $t3, 33
    li   $t4, 34
    li   $t5, 35
    li   $t6, 36
    li   $t7, 37
    beq  $s5, $t1, end_anim_draw_31
    beq  $s5, $t2, end_anim_draw_32
    beq  $s5, $t3, end_anim_draw_33
    beq  $s5, $t4, end_anim_draw_34
    beq  $s5, $t5, end_anim_draw_35
    beq  $s5, $t6, end_anim_draw_36
    beq  $s5, $t7, end_anim_draw_37

    li   $t1, 38
    li   $t2, 39
    li   $t3, 40
    li   $t4, 41
    li   $t5, 42
    li   $t6, 43
    li   $t7, 44
    beq  $s5, $t1, end_anim_draw_38
    beq  $s5, $t2, end_anim_draw_39
    beq  $s5, $t3, end_anim_draw_40
    beq  $s5, $t4, end_anim_draw_41
    beq  $s5, $t5, end_anim_draw_42
    beq  $s5, $t6, end_anim_draw_43
    beq  $s5, $t7, end_anim_draw_44

    li   $t1, 45
    li   $t2, 46
    li   $t3, 47
    li   $t4, 48
    li   $t5, 49
    li   $t6, 50
    li   $t7, 51
    beq  $s5, $t1, end_anim_draw_45
    beq  $s5, $t2, end_anim_draw_46
    beq  $s5, $t3, end_anim_draw_47
    beq  $s5, $t4, end_anim_draw_48
    beq  $s5, $t5, end_anim_draw_49
    beq  $s5, $t6, end_anim_draw_50
    beq  $s5, $t7, end_anim_draw_51

    li   $t1, 52
    li   $t2, 53
    li   $t3, 54
    li   $t4, 55
    li   $t5, 56
    li   $t6, 57
    li   $t7, 58
    beq  $s5, $t1, end_anim_draw_52
    beq  $s5, $t2, end_anim_draw_53
    beq  $s5, $t3, end_anim_draw_54
    beq  $s5, $t4, end_anim_draw_55
    beq  $s5, $t5, end_anim_draw_56
    beq  $s5, $t6, end_anim_draw_57
    beq  $s5, $t7, end_anim_draw_58

    li   $t1, 59
    li   $t2, 60
    beq  $s5, $t1, end_anim_draw_59
    beq  $s5, $t2, end_anim_draw_60

  end_anim_end:
    j nenhum_state

  end_anim_draw_1:
    la  $a0, a1
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_2:
    la  $a0, a2
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_3:
    la  $a0, a3
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_4:
    la  $a0, a4
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_5:
    la  $a0, a5
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_6:
    la  $a0, a6
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_7:
    la  $a0, a7
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_8:
    la  $a0, a8
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_9:
    la  $a0, a9
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_10:
    la  $a0, a10
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_11:
    la  $a0, a11
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_12:
    la  $a0, a12
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_13:
    la  $a0, a13
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_14:
    la  $a0, a14
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_15:
    la  $a0, a15
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_16:
    la  $a0, a16
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_17:
    la  $a0, a17
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_18:
    la  $a0, a18
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_19:
    la  $a0, a19
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_20:
    la  $a0, a20
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_21:
    la  $a0, a21
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_22:
    la  $a0, a22
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_23:
    la  $a0, a23
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_24:
    la  $a0, a24
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_25:
    la  $a0, a25
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_26:
    la  $a0, a26
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_27:
    la  $a0, a27
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_28:
    la  $a0, a28
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_29:
    la  $a0, a29
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_30:
    la  $a0, a30
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_31:
    la  $a0, a31
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_32:
    la  $a0, a32
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_33:
    la  $a0, a33
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_34:
    la  $a0, a34
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_35:
    la  $a0, a35
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_36:
    la  $a0, a36
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_37:
    la  $a0, a37
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_38:
    la  $a0, a38
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_39:
    la  $a0, a39
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_40:
    la  $a0, a40
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_41:
    la  $a0, a41
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_42:
    la  $a0, a42
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_43:
    la  $a0, a43
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_44:
    la  $a0, a44
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_45:
    la  $a0, a45
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_46:
    la  $a0, a46
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_47:
    la  $a0, a47
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_48:
    la  $a0, a48
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_49:
    la  $a0, a49
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_50:
    la  $a0, a50
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_51:
    la  $a0, a51
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_52:
    la  $a0, a52
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_53:
    la  $a0, a53
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_54:
    la  $a0, a54
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_55:
    la  $a0, a55
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_56:
    la  $a0, a56
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_57:
    la  $a0, a57
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_58:
    la  $a0, a58
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_59:
    la  $a0, a59
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

  end_anim_draw_60:
    la  $a0, a60
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

###
# NENHUM
###
  nenhum_state:
    # nao faz nada
    j update

###
# SLEEP
###
  sleep:
    jal   dorme
    j     update
    j     end_game

teste:
  jr    $ra


################################################################################
# Carregar Imagem
# $a0 = path da imagem
# $a1 = endereco na RAM
# $a2 = width
# $a3 = height
load_image:
  move $t3, $a1     # $t3 endereco na RAM
  move $t1, $a2     # $t1 width
  move $t2, $a3     # $t2 height

  addi $sp, $sp, -16
  sw $a0,  0($sp)
  sw $a1,  4($sp)
  sw $a2,  8($sp)
  sw $a3, 12($sp)

  li    $v0, 13     # 13 é o syscall para abrir arquivos
  li    $a1, 0      # flag = aberto para leitura
  li    $a2, 0      # modo ignorado
  syscall           # abre o arquivo

  move  $a0, $v0    # $a0 é o file descriptor
  mult  $t1, $t2

  li    $v0, 14     # 14 é o syscall para leitura do arquivo
  move  $a1, $t3    # $a1 = buffer, posição da memória que será colocado
  mflo  $a2         # 32 least significant bits of multiplication # $a2 = cout (IMAGE_WIDTH X IMAGE_HEIGHT = 86x86 = 7396)
  syscall

  sw $a3, 12($sp)
  sw $a2,  8($sp)
  lw $a1,  4($sp)
  lw $a0,  0($sp)
  addi $sp, $sp, 16

  jr    $ra         # Termina o carregamento da imagem para a memória

################################################################################
# Desenha Sprite
# $a0 = width
# $a1 = endereco na RAM
# $a2 = endereco no display (heap)
# $a3 = height
# Percorre os pixels do canto superior esquerdo da imagem até o canto superior
# direito. Ao fim desta linha percorre a próxima e assim por diante até que
# chega no final da imagem
# Ignora pixels com coloração
# R = 254
# G = 189
# B = 88
# HEX = FEBD58
# Desenha Sprite $a0 = width $a1 = endereco na RAM $a2 = endereco no display $a3 = height
draw_sprite:
  move    $t0, $a0                   # Carrega em $t0 o width da imagem da imagem
  move    $t1, $a1                   # Carrega em $t1 a RAM da imagem da imagem
  move    $t6, $a2                   # Carrega em $t6 a RAM da imagem da imagem
  move    $t2, $a3                   # Carrega em $t2 o height da imagem da imagem

  # fix pra nao perder width
  move    $t5, $a0

draw_sprite_loop:
  beq   $t0, $zero, fim_loop_desenha_dino  # if ja passou por todos os pixels do width then fim_loop_desenha_dino
  lbu   $t3, 0($t1)                        # Carrega em $t3 o endereco do dino na RAM ($t3 agora guarda um pixel)
  addi  $t4, $zero, 0xEB                   # Salva o valor da cor rosa no registrador $t4
  beq   $t3, $t4, draw_sprite_jump_pixel   # Se o pixel for da cor rosa então pula aquele pixel (transparencia)
  sb    $t3, 0($t6)                        # "Desenha", no display, o pixel pego quando dado lb

draw_sprite_jump_pixel:
	addi  $t0, $t0, -1                       # Agora falta width-1 para acabar de percorrer a imagem
  addi  $t1, $t1, 1                        # O registrador $a1 terá o próximo pixel salvo na RAM
  addi  $t6, $t6, 1                        # Prepara o próximo pixel que será mostrado no display
  j draw_sprite_loop                       # Volta a desenhar os proximos pixels que faltam

fim_loop_desenha_dino:
  addi  $t2, $t2, -1                       # Falta height-1 pixels para o fim do desenho
  move  $t0, $t5                           # Vai para o primeiro column da row X
  beq   $t2, $zero, draw_sprite_end        # Se chegou ao height máximo da imagem termina o desenho
  sub   $t6, $t6, $t5                      # Voltamos $t6 para a primeira colmun daquele row
  addi  $t6, $t6, DISPLAY_NEXT_LINE        # Pulamos para o próximo row
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

# printa pra ver q ta sendo clicado
# li    $v0, 4
# add   $a0, $zero, $t1
# syscall


  checa_input:
    li	  $t0, 0xff100000	        # Carrega a posicao do receiver control para $t0
    li    $t5, 0
    lw    $t1, 0($t0)	            # Carrega o conteúdo do receiver control para $t1 # To set its control "ready" bit (0xffff0000)
    andi	$t1, $t1, 0x0001        # Salva em $t1 a resposta para se receiver control é 1

    beq	  $t1, $zero, volta      # Se o receiver control for zero ignora, se nao pega o valor
    lw	  $t5, 4($t0)	           # Quando fica pronto $v0 recebe o data register

    li    $t2, 0x6E               # n
    beq   $t5, $t2, click_n
    li    $t2, 0x20               # space
    beq   $t5, $t2, click_space
    li    $t2, 0x61               # a
    beq   $t5, $t2, click_a
    li    $t2, 0x64               # d
    beq   $t5, $t2, click_d
    li    $t2, 0x77               # w
    beq   $t5, $t2, click_w
    li    $t2, 0x73               # s
    beq   $t5, $t2, click_s

    li    $t5, 0
  volta:
    jr    $ra

  click_a:
    li    $t0, 2
    beq   $s7, $t0, click_a_game_state
    li    $t0, 2
    li    $t1, 4
    beq   $s6, $t0, click_a_seta_2 # 1
    beq   $s6, $t1, click_a_seta_4 # 3
    j     volta

  click_a_game_state:
    li    $t5, 0xff000020
    lw    $s0, 0($t5)
    lw    $s1, 4($t5)
    lw    $s2, 8($t5)
    lw    $s3, 12($t5)

    li    $t8, 8
    li    $t9, 320
    div   $s0, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_A

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_A

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_A

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_A

    addi  $s0, $s0, -8
    addi  $s1, $s1, -8
    addi  $s2, $s2, -8
    addi  $s3, $s3, -8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

NAO_A:
    j     volta

  click_a_seta_2:
    li    $s6, 1
    li    $a2, 0
    li    $a3, 200
    li    $v0, 31
    li    $a0, 60
    li    $a1, 100
    syscall
    j     volta

  click_a_seta_4:
    li    $s6, 3
    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
    syscall
    j     volta

  click_d:
    li    $t0, 2
    beq   $s7, $t0, click_d_game_state
    li    $t0, 1
    li    $t1, 3
    beq   $s6, $t0, click_d_seta_1 # 2
    beq   $s6, $t1, click_d_seta_3 # 4
    j volta

  click_d_game_state:
    li    $t5, 0xff000020
    lw    $s0, 0($t5)
    lw    $s1, 4($t5)
    lw    $s2, 8($t5)
    lw    $s3, 12($t5)

    li    $t8, 8
    li    $t9, 320
    div   $s0, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_D

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_D

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_D

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_D

    addi  $s0, $s0, 8
    addi  $s1, $s1, 8
    addi  $s2, $s2, 8
    addi  $s3, $s3, 8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

NAO_D:
    j     volta

  click_d_seta_1:
    li    $s6, 2

    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
    syscall

    j volta

  click_d_seta_3:
    li    $s6, 4

    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
    syscall

    j volta

  click_w:
    li    $t0, 3
    li    $t1, 4
    beq   $s6, $t0, click_w_seta_3 # 1
    beq   $s6, $t1, click_w_seta_4 # 2
    j     volta

  click_w_seta_3:
    li    $s6, 1

    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
    syscall

    j     volta

  click_w_seta_4:
    li    $s6, 2

    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
    syscall

    j     volta

  click_s:
    li    $t0, 1
    li    $t1, 2
    beq   $s6, $t0, click_s_seta_1 # 3
    beq   $s6, $t1, click_s_seta_2 # 4
    j     volta

  click_s_seta_1:
    li    $s6, 3

    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
    syscall

    j     volta

  click_s_seta_2:
    li    $s6, 4

    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
    syscall

    j     volta

  click_space:
    li  $t0, 1
    li  $t1, 2
    li  $t2, 3
    li  $t3, 4
    beq $s6, $t0, chance_game_state_1
    beq $s6, $t1, chance_game_state_2
    beq $s6, $t2, chance_game_state_3
    beq $s6, $t3, chance_game_state_4
    j  volta

  movimenta:
    addi    $t1, $zero, NINTENDO_POS
    addi    $t1, $t1, 4
    j volta

  click_n:
    li $s7, 3
    j change_end_state

##########################################

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

##########################################
# a0 = ponto inicial
# a1 = width
# a2 = height
limpa_area:
  move $t0, $a0
  li   $t1, 0xFFFFFFFF
  li   $t2, 0
  li   $t3, 0
limpa_area_loop:
  sb   $t1, 0($t0)
  beq  $t2, $a1, pula_linha
  addi $t2, $t2, 1
  addi $t0, $t0, 1
  j    limpa_area_loop

pula_linha:
  li   $t4, 320
  sub  $t4, $t4, $a1 # $t4 = 320 - width
  add  $t0, $t0, $t4
  li   $t2, 0
  addi $t3, $t3, 1
  beq  $t3, $a2, fim_limpa_area
  j    limpa_area_loop

fim_limpa_area:
  jr $ra

  ################################################################################
  # Dorme
  #
  #
  #

  dorme:
    ori    $v0, $zero, 32		     # 32 é o syscall para sleep
    ori    $a0, $zero, 30  		   # $a0 é a quantidade de miliseconds que dorme
    syscall                      # dorme por 60 milisegundos
    jr     $ra                   # volta para depois do jal dorme da main

################################################################################
# Termina o Jogo
#
#
#
end_game:
  # li   $v0, 16       # system call para fechar o arquivo
  # move $a0, $s6      # fecha o descriptor do arquivo
  # syscall
  li    $v0, 10      # $v0 =
  syscall

# Começa na posição 0xff000000
# mapa 4 * 32 = 128bits = 16bytes -> 0x00000010
# peca 1 * 32 =  32bits =  4bytes -> 0x00000004

# 0xff000000 - 0xff000020 => matrix 1
# 0xff000020 - 0xff000024 => $s0 -> pos bloco 1
# 0xff000024 - 0xff000028 => $s1 -> pos bloco 2
# 0xff000028 - 0xff00002b => $s2 -> pos bloco 3
# 0xff00002b - 0xff000030 => $s3 -> pos bloco 4
# 0xff000030 - 0xff000034 => $s4 -> qual bloco (7)

# 0xff000100 - 0xff000120 => matrix 2
# 0xff000120 - 0xff000124 => $s0 -> pos bloco 1
# 0xff000124 - 0xff000128 => $s1 -> pos bloco 2
# 0xff000128 - 0xff00012b => $s2 -> pos bloco 3
# 0xff00012b - 0xff000130 => $s3 -> pos bloco 4
# 0xff000130 - 0xff000134 => $s4 -> qual bloco (7)

# 0xff000200 - 0xff000220 => matrix 3
# 0xff000220 - 0xff000224 => $s0 -> pos bloco 1
# 0xff000224 - 0xff000228 => $s1 -> pos bloco 2
# 0xff000228 - 0xff00022b => $s2 -> pos bloco 3
# 0xff00022b - 0xff000230 => $s3 -> pos bloco 4
# 0xff000230 - 0xff000234 => $s4 -> qual bloco (7)

# 0xff000300 - 0xff000320 => matrix 4
# 0xff000320 - 0xff000324 => $s0 -> pos bloco 1
# 0xff000324 - 0xff000328 => $s1 -> pos bloco 2
# 0xff000328 - 0xff00032b => $s2 -> pos bloco 3
# 0xff00032b - 0xff000330 => $s3 -> pos bloco 4
# 0xff000330 - 0xff000334 => $s4 -> qual bloco (7)

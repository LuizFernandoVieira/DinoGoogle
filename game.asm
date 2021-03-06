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
  aFim:  .asciiz "iFim.bin"

  nintendo_img: .asciiz "nintendo.bin"
  menu_img:     .asciiz "menu.bin"
  seta_img:     .asciiz "seta.bin"
  music_img:    .asciiz "m.bin"

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
  .eqv  DISPLAY_NEXT_LINE   0x140

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

  # MUSIC
  .eqv  MUSIC_RAM     0x10025CAC
  .eqv  MUSIC_POS     0x10040000
  .eqv  MUSIC_WIDTH   320
  .eqv  MUSIC_HEIGHT  240

  # SETA
  .eqv  SETA_RAM         0x100388AC
  .eqv  SETA_POS_1       0x1004ce71
  .eqv  SETA_POS_2       0x1004cee5
  .eqv  SETA_POS_3       0x1004ec71
  .eqv  SETA_POS_4       0x1004f0a5
  .eqv  SETA_WIDTH       10
  .eqv  SETA_HEIGHT      8

  # PECAS
  .eqv  PECA_POS           0x10040040
  .eqv  PECA_WIDTH         8
  .eqv  PECA_HEIGHT        8
  .eqv  PECA_1_RAM         0x100388EC
  .eqv  PECA_2_RAM         0x1003892C
  .eqv  PECA_3_RAM         0x1003896C
  .eqv  PECA_4_RAM         0x100389AC
  .eqv  PECA_5_RAM         0x100389EC
  .eqv  PECA_6_RAM         0x10038A2C
  .eqv  PECA_7_RAM         0x10038A6C
  .eqv  PECA_PRETA_RAM     0x10038AAC

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

    li    $s7, 0

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
    li  $t0, 1
    li  $t1, 2
    li  $t2, 3
    li  $t3, 4
    beq $s7, $zero, intro_state
    beq $s7, $t0, menu_state
    beq $s7, $t1, game_state
    beq $s7, $t2, end_state
    beq $s7, $t3, music_state
    j nenhum_state

###
# INTRO
###
  intro_state:
    la    $a1, NINTENDO_RAM
    addi  $s0, $s0, 1920
    move  $a2, $s0

    la    $a0, NINTENDO_WIDTH
    la    $a3, NINTENDO_HEIGHT
    jal   draw_sprite

    jal dorme

    la    $t0, NINTENDO_POS
    addi  $t0, $t0, 33250
    bgt   $s0, $t0, change_to_menu_state
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
    li    $a1, MENU_RAM
    li    $a2, MENU_POS
    li    $a0, MENU_WIDTH
    li    $a3, MENU_HEIGHT
    jal   draw_sprite

    li  $t0, 1
    li  $t1, 2
    li  $t2, 3
    li  $t3, 4

    beq $s6, $t0, case_1
    beq $s6, $t1, case_2
    beq $s6, $t2, case_3
    beq $s6, $t3, case_4

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
    li    $a1, SETA_RAM
    li    $a0, SETA_WIDTH
    li    $a3, SETA_HEIGHT
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

    li  $t5, 0xff000020
    sw  $zero, 16($t5)
    li  $t5, 0xff000120
    sw  $zero, 16($t5)
    li  $t5, 0xff000220
    sw  $zero, 16($t5)
    li  $t5, 0xff000320
    sw  $zero, 16($t5)

    addi $sp, $sp, -4
    sw   $ra, 0($sp)

  cria_peca_1:
    la    $a0, 0xff000020
    li    $a1, 0
    jal   cria_peca_player_1
  cria_peca_2:
    li    $t0, 2
    bgt   $t0, $s6, cria_peca_3
    la    $a0, 0xff000120
    li    $a1, 80
    jal   cria_peca_player_1
  cria_peca_3:
    li    $t0, 3
    bgt   $t0, $s6, cria_peca_4
    la    $a0, 0xff000220
    li    $a1, 160
    jal   cria_peca_player_1
  cria_peca_4:
    li    $t0, 4
    bgt   $t0, $s6, break_cria_peca
    la    $a0, 0xff000320
    li    $a1, 240
    jal   cria_peca_player_1
  break_cria_peca:

    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    j   game_state





###
# GAME STATE
###
  game_state:
    addi $sp $sp, -4
    sw   $ra, 0($sp)

  limpa_1:
    la   $a0, 0xff000000  # PLAYER 1
    jal  limpa_linhas
  limpa_2:
    # li   $t0, 2
    # bgt  $t0, $s6, break_linha
    # la   $a0, 0xff000100  # PLAYER 2
    # jal  limpa_linhas
  limpa_3:
    # li   $t0, 3
    # bgt  $t0, $s6, break_linha
    # la   $a0, 0xff000200  # PLAYER 3
    # jal  limpa_linhas
  limpa_4:
    # li   $t0, 4
    # bgt  $t0, $s6, break_linha
    # la   $a0, 0xff000300  # PLAYER 4
    # jal  limpa_linhas
  break_linha:

    jal  desenha_game_state_bg

  atualiza_1:
    la   $a0, 0xff000012        # PLAYER 1
    li   $a1, 0
    jal  desenha_pecas_antigas
    la   $a0, 0xff000020
    jal  desenha_pecas_atuais

  atualiza_2:
    # li   $t0, 2
    # bgt  $t0, $s6, atualiza_3
    # la   $a0, 0xff000112        # PLAYER 2
    # li   $a1, 80
    # jal  desenha_pecas_antigas
    # la   $a0, 0xff000120
    # jal  desenha_pecas_atuais

  atualiza_3:
    # li   $t0, 3
    # bgt  $t0, $s6, atualiza_4
    # la   $a0, 0xff000212        # PLAYER 3
    # li   $a1, 160
    # jal  desenha_pecas_antigas
    # la   $a0, 0xff000220
    # jal  desenha_pecas_atuais

  atualiza_4:
    # li   $t0, 4
    # bgt  $t0, $s6, break_atualiza
    # la   $a0, 0xff000312        # PLAYER 4
    # li   $a1, 240
    # jal  desenha_pecas_antigas
    # la   $a0, 0xff000320
    # jal  desenha_pecas_atuais
  break_atualiza:

    # aqui game over !!! TODO

  preve_1:
    li   $a0, 2560        # PLAYER 1
    la   $a1, 0xff000012
    la   $a2, 0xff000020
    la   $a3, 0xff000000
    li   $t8, 0
    jal  preve_colisao_matriz
    bne  $v0, $zero, preve_2
    la   $a0, 0xff000020     # PLAYER 1
    jal  cai_normal

  preve_2:
    # li   $t0, 2
    # bgt  $t0, $s6, preve_3
    # li   $a0, 2560        # PLAYER 2
    # la   $a1, 0xff000112
    # la   $a2, 0xff000120
    # la   $a3, 0xff000100
    # li   $t8, 80
    # jal  preve_colisao_matriz
    # bne  $v0, $zero, preve_3
    # la   $a0, 0xff000120     # PLAYER 2
    # jal  cai_normal

  preve_3:
    # li   $t0, 3
    # bgt  $t0, $s6, preve_4
    # li   $a0, 2560        # PLAYER 3
    # la   $a1, 0xff000212
    # la   $a2, 0xff000220
    # la   $a3, 0xff000200
    # li   $t8, 160
    # jal  preve_colisao_matriz
    # bne  $v0, $zero, preve_4
    # la   $a0, 0xff000220     # PLAYER 3
    # jal  cai_normal

  preve_4:
    # li   $t0, 4
    # bgt  $t0, $s6, break_preve
    # li   $a0, 2560        # PLAYER 4
    # la   $a1, 0xff000312
    # la   $a2, 0xff000320
    # la   $a3, 0xff000300
    # li   $t8, 240
    # jal  preve_colisao_matriz
    # bne  $v0, $zero, break_preve
    # la   $a0, 0xff000320     # PLAYER 4
    # jal  cai_normal
  break_preve:

    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    j     nenhum_state


###
# CAI NORMAL A PECA
# $a0 =  Endereco da peca do player
###
  cai_normal:
    sw    $s0, 0($a0)
    sw    $s1, 4($a0)
    sw    $s2, 8($a0)
    sw    $s3, 12($a0)

    addi  $s0, $s0, 2560
    addi  $s1, $s1, 2560
    addi  $s2, $s2, 2560
    addi  $s3, $s3, 2560

    sw    $s0, 0($a0)
    sw    $s1, 4($a0)
    sw    $s2, 8($a0)
    sw    $s3, 12($a0)

    jr $ra

  ###
  # PREVE COLISAO MATRIZ
  # $a0 = valor da soma
  # $a1 = endereco do final da matriz
  # $a2 = endereco das pecas do player
  # $a3 = endereco do comeco da matriz
  # $t8 = sum
  ###
    preve_colisao_matriz:
      li   $v0, 0

      lw   $s0, 0($a2)
      lw   $s1, 4($a2)
      lw   $s2, 8($a2)
      lw   $s3, 12($a2)
      add  $s0, $s0, $a0
      add  $s1, $s1, $a0
      add  $s2, $s2, $a0
      add  $s3, $s3, $a0

      li   $t1, 18		            # inicializa y = 18
      move $t5, $a1               # último byte

    colisionFOR1:
      lb   $t0, 0($t5)	          # le o byte a ser avaliado
      addi $t5, $t5, -1           # byte anterior
      addi $t1, $t1, -1	          # decrementa y

      li   $t2, 8 	 	            # inicializa x
      beq  $t1, $zero, colisionCLOSE

    colisionFOR2:
      addi $t2, $t2, -1	          # decrementa x
      li   $t3, 1		              # inicializa comparador
      and  $t3, $t3, $t0	        # pega primeiro bit do byte
      srl  $t0, $t0, 1	          # coloca o segundo bit como primeiro

      beq  $t3, $zero, colisionEND_FOR2

      move $t4 $t2		            # operações do x feitas no $t4
      move $t6, $t1		            # operações do y feitas no $t6

      addi $t6, $t6, 1       	    # y+1
      addi $t4, $t4, 1       	    # x+1

      li   $t7, 8
      mul  $t4, $t4, $t7          # (x+1)*8
      add  $t4, $t4, $t8          # (x+1)*8 + shift
      mul  $t6, $t6, $t7	        # y*8
      li   $t7, 70
      add  $t6, $t6, $t7	        # (y*8)+70
      li   $t7, 320
      mul  $t6, $t6, $t7	        # ((y*8)+70)*320
      add  $t6, $t6, $t4	        # ((y*8)+70)*320 + (x+1)*8 + shift

      # VERIFICA COLISAO COM A MATRIZ
      beq  $s0, $t6, COLIDIU
      beq  $s1, $t6, COLIDIU
      beq  $s2, $t6, COLIDIU
      beq  $s3, $t6, COLIDIU

    colisionEND_FOR2:
      beq  $t2, $zero, colisionFOR1        # finaliza o FOR
      j colisionFOR2

    COLIDIU:
      addi $sp, $sp, -12
      sw   $ra, 0($sp)
      sw   $a2, 4($sp)
      sw   $t8, 8($sp)

      move  $a0, $a3
      move  $a1, $a2
      move  $a3, $t8
      jal   coloca_peca_matriz

      lw    $a0, 4($sp)
      lw    $a1, 8($sp)
      jal   cria_peca_player_1

      lw   $ra, 0($sp)
      addi $sp, $sp, 12

      li   $v0, 1

      jr   $ra

colisionCLOSE:
      addi $sp, $sp, -4
      sw   $ra, 0($sp)

      move $a1, $a2
      move $a0, $a3
      move $a2, $t8
      jal  preve_colisao_chao

      lw   $ra, 0($sp)
      addi $sp, $sp, 4

      jr   $ra

###
# PREVE COLISAO COM O CHAO
# $a0 = Endereco da matriz dos player
# $a1 = Endereco das pecas dos player
# $a2 = sum
###
preve_colisao_chao:
  li   $v0, 0
  move $t5, $a1
  lw   $s0, 0($t5)
  lw   $s1, 4($t5)
  lw   $s2, 8($t5)
  lw   $s3, 12($t5)

  li    $t4, 65928                   # canto inferior
  slt   $t6, $s0, $t4
  beq   $t6, $zero, preve_colisao
  slt   $t6, $s1, $t4
  beq   $t6, $zero, preve_colisao
  slt   $t6, $s2, $t4
  beq   $t6, $zero, preve_colisao
  slt   $t6, $s3, $t4
  beq   $t6, $zero, preve_colisao

preve_colisao_chao_CLOSE:
  jr $ra

preve_colisao:
  addi  $sp, $sp, -12
  sw    $ra, 0($sp)
  sw    $a2, 4($sp)
  sw    $a1, 8($sp)

  move  $a0, $a0
  move  $a1, $a1
  move  $a3, $a2
  jal   coloca_peca_matriz

  lw    $a1, 4($sp)
  lw    $a0, 8($sp)
  jal   cria_peca_player_1

  lw    $ra, 0($sp)
  addi  $sp, $sp, 12

  li  $v0, 1

  jr  $ra

change_end_state:
  li    $s5, 0
  j     end_state

###
# COLOCA PECA NA MATRIZ
# a0 = pos inicial da matriz
# a1 = endereco das pecas do player
# a3 = shift do player
###
coloca_peca_matriz:
  addi $sp, $sp, -4
  sw   $ra, 0($sp)

  lw   $a2, 0($a1)
  jal  escreve_na_matriz
  lw   $a2, 4($a1)
  jal  escreve_na_matriz
  lw   $a2, 8($a1)
  jal  escreve_na_matriz
  lw   $a2, 12($a1)
  jal  escreve_na_matriz

  lw   $ra, 0($sp)
  addi $sp, $sp, 4

  jr $ra

###
# ESCREVE NA MATRIZ
# a0 = pos inicial da matriz
# a2 = pos da peça
# a3 = shiftDoPlayer
###
escreve_na_matriz:
    li   $t0, 320
    div  $a2, $t0
    mfhi $t3
    mflo $t4
    addi $t3, $t3, -8
    sub  $t3, $t3, $a3

    li   $t0, 8
    div  $t3, $t0
    mflo $t3

    addi $t4, $t4, -70
    li   $t0, 8
    div  $t4, $t0
    mflo $t4
    move $t5, $a0

    add  $t5, $t5, $t4
    lb   $t6, 0($t5)
    li   $t7, 128
    srlv $t7, $t7, $t3
    or   $t6, $t6, $t7
    sb   $t6, 0($t5)

    jr   $ra

###
# DESENHA GAME STATE
###
  desenha_game_state_bg:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)

    li   $t0, 1
    li   $t1, 2
    li   $t2, 3
    li   $t3, 4

    beq  $s6, $t0, game_state_1
    beq  $s6, $t1, game_state_2
    beq  $s6, $t2, game_state_3
    beq  $s6, $t3, game_state_4
    j    close_desenha_game_state

  game_state_1:
    li   $a1, GAME_BG_1_PLAYER_RAM
    li   $a2, GAME_BG_1_PLAYER_POS
    li   $a0, GAME_BG_1_PLAYER_WIDTH
    li   $a3, GAME_BG_1_PLAYER_HEIGHT
    jal  draw_sprite
    j    close_desenha_game_state

  game_state_2:
    li   $a1, GAME_BG_2_PLAYER_RAM
    li   $a2, GAME_BG_2_PLAYER_POS
    li   $a0, GAME_BG_2_PLAYER_WIDTH
    li   $a3, GAME_BG_2_PLAYER_HEIGHT
    jal  draw_sprite
    j    close_desenha_game_state

  game_state_3:
    li   $a1, GAME_BG_3_PLAYER_RAM
    li   $a2, GAME_BG_3_PLAYER_POS
    li   $a0, GAME_BG_3_PLAYER_WIDTH
    li   $a3, GAME_BG_3_PLAYER_HEIGHT
    jal  draw_sprite
    j    close_desenha_game_state

  game_state_4:
    li   $a1, GAME_BG_4_PLAYER_RAM
    li   $a2, GAME_BG_4_PLAYER_POS
    li   $a0, GAME_BG_4_PLAYER_WIDTH
    li   $a3, GAME_BG_4_PLAYER_HEIGHT
    jal  draw_sprite

  close_desenha_game_state:
    lw   $ra, 0($sp)
    addi $sp $sp, 4
    jr   $ra

###
# END
###
  end_state:
  end_anim:
    # li   $t0, 1
    # li   $t1, 50
  #
  # for_animation:
  #   addi $t0, $t0, 1
  #   bgt  $t0, $t1, end_game
  #   # load
  #   la  $a0, a1 # aX
  #   la  $a1, END_ANIM_RAM
  #   la  $a2, END_ANIM_WIDTH
  #   la  $a3, END_ANIM_HEIGHT
  #   jal load_image
  #   # desenha
  #   li  $a0, END_ANIM_WIDTH
  #   la  $a1, END_ANIM_RAM
  #   li  $a2, END_ANIM_POS
  #   li  $a3, END_ANIM_HEIGHT
  #   jal draw_sprite
  #   j    for_animation

    li   $t0, 60
    beq  $s5, $t0, end_game
    addi $s5, $s5, 1
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT

    li $v0, 1
    move $a0, $s5
    syscall

    beq  $s5, $zero, end_anim_draw_1
    li   $t1, 1
    beq  $s5, $t1, end_anim_draw_2
    li   $t1, 2
    beq  $s5, $t1, end_anim_draw_3
    li   $t1, 3
    beq  $s5, $t1, end_anim_draw_4
    li   $t1, 4
    beq  $s5, $t1, end_anim_draw_5
    li   $t1, 5
    beq  $s5, $t1, end_anim_draw_6
    li   $t1, 6
    beq  $s5, $t1, end_anim_draw_7
    li   $t1, 7
    beq  $s5, $t1, end_anim_draw_8
    li   $t1, 8
    beq  $s5, $t1, end_anim_draw_9
    li   $t1, 9
    beq  $s5, $t1, end_anim_draw_10
    li   $t1, 10
    beq  $s5, $t1, end_anim_draw_11
    li   $t1, 11
    beq  $s5, $t1, end_anim_draw_12
    li   $t1, 12
    beq  $s5, $t1, end_anim_draw_13
    li   $t1, 13
    beq  $s5, $t1, end_anim_draw_14
    li   $t1, 14
    beq  $s5, $t1, end_anim_draw_15
    li   $t1, 15
    beq  $s5, $t1, end_anim_draw_16
    li   $t1, 16
    beq  $s5, $t1, end_anim_draw_17
    li   $t1, 17
    beq  $s5, $t1, end_anim_draw_17
    li   $t1, 18
    beq  $s5, $t1, end_anim_draw_18
    li   $t1, 19
    beq  $s5, $t1, end_anim_draw_19
    li   $t1, 20
    beq  $s5, $t1, end_anim_draw_20
    li   $t1, 21
    beq  $s5, $t1, end_anim_draw_25
    li   $t1, 22
    beq  $s5, $t1, end_anim_draw_25

    jal endAudio
    jal endAudio
    jal endAudio
    jal endAudio

    jal sleep
    jal sleep
    jal sleep

    j  end_game

  end_anim_end:
    j end_anim

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
    la  $a0, aFim
    jal load_image
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    jal draw_sprite
    j   end_anim_end

###
# MUSIC STATE
###
  load_music_state:
    la  $a0, music_img
    li  $a1, MUSIC_RAM
    li  $a2, MUSIC_WIDTH
    li  $a3, MUSIC_HEIGHT
    jal load_image

    li  $t0, 4      # pos da seta na tela
    li  $t1, 0xff000400 # pos que guarda dados da seta na memoria
    sw  $t0, 0($t1)

  music_state:
    li    $a1, MUSIC_RAM
    li    $a2, MUSIC_POS
    li    $a0, MUSIC_WIDTH
    li    $a3, MUSIC_HEIGHT
    jal   draw_sprite

    # verificando o valor em $s0
    # para escolher a pos da seta
    li  $t0, 1
    li  $t1, 2
    li  $t2, 3
    li  $t3, 4

    li  $t4, 0xff000400
    lw  $t5, 0($t4)

    beq $t5, $t0, music_case_1   # if 1 -> A
    beq $t5, $t1, music_case_2   # if 2 -> B
    beq $t5, $t2, music_case_3   # if 3 -> C
    beq $t5, $t3, music_case_4   # if 3 -> BACK

  music_case_1:
    li  $a2, 0x100489c2 #35266 dec => 89C2 hex
    j   music_case_end
  music_case_2:
    li  $a2, 0x10048a2f #35375 dec => 8A2F hex
    j   music_case_end
  music_case_3:
    li  $a2, 0x1004b1c2 #45506 dec => B1C2 hex
    j   music_case_end
  music_case_4:
    li  $a2, 0x1004b22f #45615 dec => B22F hex
    j   music_case_end

  music_case_end:
    li    $a1, SETA_RAM    # $a1 = endereco na RAM
    li    $a0, SETA_WIDTH  # $a0 = width
    li    $a3, SETA_HEIGHT # $a3 = height
    jal   draw_sprite

    j nenhum_state

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


#######################
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

###
# CRIA PECA
# $a0 = endereco das pecas do player
# $a1 = sum
###
  cria_peca_player_1:
    lw  $t4, 16($a0)

    li   $t8, 8
    addi $t4, $t4, 1
    bne  $t4, $t8, continua_criacao
    li   $t4, 1

  continua_criacao:
    li  $t8, 1
    beq $t4, $t8, pula_para_peca_1
    li  $t8, 2
    beq $t4, $t8, pula_para_peca_2
    li  $t8, 3
    beq $t4, $t8, pula_para_peca_3
    li  $t8, 4
    beq $t4, $t8, pula_para_peca_4
    li  $t8, 5
    beq $t4, $t8, pula_para_peca_5
    li  $t8, 6
    beq $t4, $t8, pula_para_peca_6
    li  $t8, 7
    beq $t4, $t8, pula_para_peca_7

  pula_para_peca_1:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 25008
    j   pula_todas_pecas
  pula_para_peca_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 27552
    j   pula_todas_pecas
  pula_para_peca_3:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 27544
    j   pula_todas_pecas
  pula_para_peca_4:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 27536
    li  $t3, 27544
    j   pula_todas_pecas
  pula_para_peca_5:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 27560
    j   pula_todas_pecas
  pula_para_peca_6:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 27552
    li  $t3, 27560
    j   pula_todas_pecas
  pula_para_peca_7:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 27544
    li  $t3, 27552
    j   pula_todas_pecas
  pula_todas_pecas:

  coloca_peca_memoria:
    add $t0, $t0, $a1
    add $t1, $t1, $a1
    add $t2, $t2, $a1
    add $t3, $t3, $a1

    sw  $t0, 0($a0)
    sw  $t1, 4($a0)
    sw  $t2, 8($a0)
    sw  $t3, 12($a0)
    sw  $t4, 16($a0)

    li  $t0, 1
    sw  $t0, 20($a0)

    jr  $ra          # j  game_state

###
# CRIA PECA
# a0 = para qual player
# t4 valor atual
###
  cria_peca_player_2:
    li  $t5, 0xff000120
    lw  $t4, 16($t5)     # 0xff00000010

    li   $t8, 8
    addi $t4, $t4, 1
    bne  $t4, $t8, continua_criacao_player_2
    li   $t4, 1

  continua_criacao_player_2:
    li  $t8, 1
    beq $t4, $t8, pula_para_peca_1_player_2
    li  $t8, 2
    beq $t4, $t8, pula_para_peca_2_player_2
    li  $t8, 3
    beq $t4, $t8, pula_para_peca_3_player_2
    li  $t8, 4
    beq $t4, $t8, pula_para_peca_4_player_2
    li  $t8, 5
    beq $t4, $t8, pula_para_peca_5_player_2
    li  $t8, 6
    beq $t4, $t8, pula_para_peca_6_player_2
    li  $t8, 7
    beq $t4, $t8, pula_para_peca_7_player_2
    j   game_state

  pula_para_peca_1_player_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 25008
    j   pula_todas_pecas_player_2
  pula_para_peca_2_player_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 27552
    j   pula_todas_pecas_player_2
  pula_para_peca_3_player_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 27544
    j   pula_todas_pecas_player_2
  pula_para_peca_4_player_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 27536
    li  $t3, 27544
    j   pula_todas_pecas_player_2
  pula_para_peca_5_player_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 25000
    li  $t3, 27560
    j   pula_todas_pecas_player_2
  pula_para_peca_6_player_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 27552
    li  $t3, 27560
    j   pula_todas_pecas_player_2
  pula_para_peca_7_player_2:
    li  $t0, 24984
    li  $t1, 24992
    li  $t2, 27544
    li  $t3, 27552
    j   pula_todas_pecas_player_2
  pula_todas_pecas_player_2:

  coloca_peca_memoria_player_2:
    sw  $t0, 0($t5)
    sw  $t1, 4($t5)
    sw  $t2, 8($t5)
    sw  $t3, 12($t5)
    sw  $t4, 16($t5)

    li  $t0, 1
    sw  $t0, 20($t5)

    jr  $ra

###
# DESENHA PECAS ANTIGAS
# $a0 = Endereço da matriz do player
# $a1 = Shift a esquerda da peca
###
  desenha_pecas_antigas:
    li   $t1, 18		            # inicializa y = 17
    move $t5, $a0

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

    addi $t6, $t6, 1       # y+1
    addi $t4, $t4, 1       # x+1
    li   $t7, 8
    mul  $t4, $t4, $t7     # (x+1)*8
    # add  $t4, $t4, $a1     # x+1 + shiftDoPlayer
    mul  $t6, $t6, $t7	   # y*8
    li   $t7, 70
    add  $t6, $t6, $t7	   # (y*8)+70
    li   $t7, 320
    mul  $t6, $t6, $t7	   # ((y*8)+70)*320
    add  $t6, $t6, $t4	   # ((y*8)+70)*320 + (x+1)*8
    la   $t7, BASE_DISPLAY
    add  $t6, $t6, $t7	   # ((y*8)+70)*320 + (x+1)*8 + POS_DISPLAY

    # BACKUP DE REGISTRADORES IMPORTANTES
    addi $sp, $sp, -20     # salva registradores importantes antes de enviar
    sw   $ra, 0($sp)
    sw   $t0, 4($sp)       # salva o byte que estou usando atualmente
    sw   $t1, 8($sp)       # salva o meu y atual
    sw   $t2, 12($sp)      # salva o meu x atual
    sw   $t5, 16($sp)      # salva o endereço do byte do próximo loop

    # LOAD
    la   $a0, p7_img
    la   $a1, PECA_7_RAM
    la   $a2, PECA_WIDTH
    la   $a3, PECA_HEIGHT
    jal  load_image

    # PRINTA
    move $a2, $t6
    la   $a0, PECA_WIDTH
    la   $a1, PECA_7_RAM
    la   $a3, PECA_HEIGHT
    jal  draw_sprite

    # RESTAURA REGISTRADORES IMPORTANTES
    lw   $t5, 16($sp)      # salva o endereço do byte do próximo loop
    lw   $t2, 12($sp)      # salva o meu x atual
    lw   $t1, 8($sp)       # salva o meu y atual
    lw   $t0, 4($sp)       # salva o byte que estou usando atualmente
    lw   $ra, 0($sp)
    addi $sp, $sp, 20

  END_FOR2:
    beq $t2, $zero, FOR1
    j FOR2

  CLOSE:
    jr $ra

###
# DESENHA PECAS ATUAIS
# $a0 = Endereco das pecas do player
###
  desenha_pecas_atuais:
    move $t8, $a0
    lw   $s4, 16($t8)

  case_desenha_peca_1:
    li    $t0, 1
    bne   $s4, $t0, case_desenha_peca_2
    li    $a1, PECA_1_RAM
    j     break_desenha_peca
  case_desenha_peca_2:
    li    $t0, 2
    beq   $s4, $t0, case_desenha_peca_3
    li    $a1, PECA_2_RAM
    j     break_desenha_peca
  case_desenha_peca_3:
    li    $t0, 3
    beq   $s4, $t0, case_desenha_peca_4
    li    $a1, PECA_3_RAM
    j     break_desenha_peca
  case_desenha_peca_4:
    li    $t0, 4
    beq   $s4, $t0, case_desenha_peca_5
    li    $a1, PECA_4_RAM
    j     break_desenha_peca
  case_desenha_peca_5:
    li    $t0, 5
    beq   $s4, $t0, case_desenha_peca_6
    li    $a1, PECA_5_RAM
    j     break_desenha_peca
  case_desenha_peca_6:
    li    $t0, 6
    beq   $s4, $t0, case_desenha_peca_7
    li    $a1, PECA_6_RAM
    j     break_desenha_peca
  case_desenha_peca_7:
    li    $t0, 7
    beq   $s4, $t0, break_desenha_peca
    li    $a1, PECA_7_RAM
  break_desenha_peca:

    addi  $sp, $sp, -4
    sw    $ra, 0($sp)

    li    $a0, PECA_HEIGHT
    li    $a3, PECA_WIDTH


    li    $t7, BASE_DISPLAY
    lw    $s0, 0($t8)
    add   $a2, $s0, $t7
    jal   draw_sprite

    li    $t7, BASE_DISPLAY
    lw    $s1, 4($t8)
    add   $a2, $s1, $t7
    jal   draw_sprite

    li    $t7, BASE_DISPLAY
    lw    $s2, 8($t8)
    add   $a2, $s2, $t7
    jal   draw_sprite

    li    $t7, BASE_DISPLAY
    lw    $s3, 12($t8)
    add   $a2, $s3, $t7
    jal   draw_sprite

    lw   $ra, 0($sp)
    addi $sp, $sp, 4

    jr   $ra


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
    li	  $t0, 0xff100000
    li    $t5, 0
    lw    $t1, 0($t0)
    andi	$t1, $t1, 0x0001

    beq	  $t1, $zero, nao_clicou
    lw	  $t5, 4($t0)

    li    $t2, 0x66
    beq   $t5, $t2, click_f
    li    $t2, 0x6D
    beq   $t5, $t2, click_m
    li    $t2, 0x6E               # n
    beq   $t5, $t2, click_n
    li    $t2, 0x20               # space
    beq   $t5, $t2, click_space

    # PLAYER 1
    li    $t2, 0x61               # a
    beq   $t5, $t2, click_a
    li    $t2, 0x64               # d
    beq   $t5, $t2, click_d
    li    $t2, 0x77               # w
    beq   $t5, $t2, click_w
    li    $t2, 0x73               # s
    beq   $t5, $t2, click_s

    # PLAYER 2
    li    $t2, 0x67             # g
    beq   $t5, $t2, click_g
    li    $t2, 0x68             # h
    beq   $t5, $t2, click_h
    li    $t2, 0x62             # b
    beq   $t5, $t2, click_b

    # PLAYER 3
    li    $t2, 0x6A             # j
    beq   $t5, $t2, click_j
    li    $t2, 0x6B             # k
    beq   $t5, $t2, click_k
    li    $t2, 0x75             # u
    beq   $t5, $t2, click_u

    # PLAYER 4
    li    $t2, 0x6F             # o
    beq   $t5, $t2, click_o
    li    $t2, 0x70             # p
    beq   $t5, $t2, click_p
    li    $t2, 0x6C             # l
    beq   $t5, $t2, click_l

    li    $t5, 0
  volta:
    jr    $ra

  nao_clicou:
    li    $t0, 0xff000410
    li    $t1, 0
    sw    $t1, 0($t0)
    j volta

  click_a:
    li    $t0, 4
    beq   $s7, $t0, click_a_music_state # music state
    li    $t0, 2
    beq   $s7, $t0, click_a_game_state  # game state
    li    $t0, 2
    li    $t1, 4
    beq   $s6, $t0, click_a_seta_2 # 1
    beq   $s6, $t1, click_a_seta_4 # 3
    j     volta

  click_a_music_state:
    li    $t0, 2
    li    $t1, 4
    li    $t2, 0xff000400
    lw    $t3, 0($t2)
    beq   $t3, $t0, click_a_seta_music_a # 2
    beq   $t3, $t1, click_a_seta_music_c # 4
    j     volta

  click_a_seta_music_a:
    li   $t0, 1
    sw   $t0, 0($t2)
    j volta

  click_a_seta_music_c:
    li   $t0, 3
    sw   $t0, 0($t2)
    j volta

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
    li    $t0, 4
    beq   $s7, $t0, click_d_music_state # music state
    li    $t0, 2
    beq   $s7, $t0, click_d_game_state
    li    $t0, 1
    li    $t1, 3
    beq   $s6, $t0, click_d_seta_1 # 2
    beq   $s6, $t1, click_d_seta_3 # 4
    j volta

  click_d_music_state:
    li    $t0, 1
    li    $t1, 3
    li    $t2, 0xff000400
    lw    $t3, 0($t2)
    beq   $t3, $t0, click_a_seta_music_b # 1
    beq   $t3, $t1, click_a_seta_music_back # 3
    j     volta

  click_a_seta_music_b:
    li   $t0, 2
    sw   $t0, 0($t2)
    j volta

  click_a_seta_music_back:
    li   $t0, 4
    sw   $t0, 0($t2)
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
    li    $t0, 4
    beq   $s7, $t0, click_w_music_state # music state
    li    $t0, 3
    li    $t1, 4
    beq   $s6, $t0, click_w_seta_3 # 1
    beq   $s6, $t1, click_w_seta_4 # 2
    j     volta

  click_w_music_state:
    li    $t0, 3
    li    $t1, 4
    li    $t2, 0xff000400
    lw    $t3, 0($t2)
    beq   $t3, $t0, click_w_seta_music_a # 3
    beq   $t3, $t1, click_w_seta_music_b # 4
    j     volta

  click_w_seta_music_a:
    li   $t0, 1
    sw   $t0, 0($t2)
    j volta

  click_w_seta_music_b:
    li   $t0, 2
    sw   $t0, 0($t2)
    j volta

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
    li    $t0, 4
    beq   $s7, $t0, click_s_music_state # music state
    li    $t0, 3
    beq   $s7, $t0, peca_cai_rapido
    li    $t0, 1
    li    $t1, 2
    beq   $s6, $t0, click_s_seta_1 # 3
    beq   $s6, $t1, click_s_seta_2 # 4
    j     volta

  peca_cai_rapido:
    li    $t0, 0xff000410
    li    $t1, 1
    sw    $t1, 0($t0)
    j     volta

  click_s_music_state:
    li    $t0, 1
    li    $t1, 2
    li    $t2, 0xff000400
    lw    $t3, 0($t2)
    beq   $t3, $t0, click_s_seta_music_c # 1
    beq   $t3, $t1, click_s_seta_music_back # 2
    j     volta

  click_s_seta_music_c:
    li   $t0, 3
    sw   $t0, 0($t2)
    j volta

  click_s_seta_music_back:
    li   $t0, 4
    sw   $t0, 0($t2)
    j volta

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
    li    $t0, 4
    beq   $s7, $t0, click_space_music
    li  $t0, 1
    li  $t1, 2
    li  $t2, 3
    li  $t3, 4
    beq $s6, $t0, chance_game_state_1
    beq $s6, $t1, chance_game_state_2
    beq $s6, $t2, chance_game_state_3
    beq $s6, $t3, chance_game_state_4
    j  volta

  click_space_music:
    li  $t0, 0xff000400
    lw  $t1, 0($t0)
    li  $t2, 1
    li  $t3, 2
    li  $t4, 3
    li  $t5, 4
    beq $t1, $t2, click_space_music_a
    beq $t1, $t3, click_space_music_b
    beq $t1, $t4, click_space_music_c
    beq $t1, $t5, click_space_music_back
    j   volta

  click_space_music_a:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal  timeToLoad
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal minuetAudioChorus
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal minuetAudioChorus
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal minuetAudioChorus
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal minuetAudioBridge
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal minuetAudioBridge
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    j volta

  click_space_music_b:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal suitAudio
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    j volta

  click_space_music_c:
    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal koroAudioChorus
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal koroAudioChorus
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal koroAudioBridge
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    addi $sp, $sp, -4
    sw   $ra, 0($sp)
    jal koroAudioChorus
    lw   $ra, 0($sp)
    addi $sp $sp, 4

    j volta

  click_space_music_back:
    li $s7, 1
    j volta

  movimenta:
    addi    $t1, $zero, NINTENDO_POS
    addi    $t1, $t1, 4
    j volta

  click_n:
    li $s7, 3
    j change_end_state

  click_m:
    li $s7, 4
    j load_music_state

  ###
  # CLICK F
  ###
  click_f:
    li    $t0, 2
    bne   $s7, $t0, volta
    # verifica peca atual e dependendo dela
    # transforma a pos de memoria pra outra coisa
    li    $t0, 0xff000020
    lw    $t1, 16($t0)

    li    $t2, 1
    beq   $t1, $t2, click_f_peca_1
    li    $t2, 2
    beq   $t1, $t2, click_f_peca_2
    li    $t2, 3
    beq   $t1, $t2, click_f_peca_3
    li    $t2, 4
    beq   $t1, $t2, click_f_peca_4
    li    $t2, 5
    beq   $t1, $t2, click_f_peca_5
    li    $t2, 6
    beq   $t1, $t2, click_f_peca_6
    li    $t2, 7
    beq   $t1, $t2, click_f_peca_7
    j volta

  # http://gamedev.stackexchange.com/questions/
  # 17974/how-to-rotate-blocks-in-tetris

  ###
  # PECA 1
  ###
  click_f_peca_1:
    lw    $t1, 0($t0)
    lw    $t2, 4($t0)
    lw    $t3, 8($t0)
    lw    $t4, 12($t0)
    lw    $t5, 20($t0)
  peca_1_state_1:
    li    $t6, 1
    bne   $t5, $t6, peca_1_state_2
    addi  $t1, $t1, -2552
    addi  $t3, $t3, 2552
    addi  $t4, $t4, 5104
    li    $t6, 4
    sw    $t6, 20($t0)
    j     end_peca_state
  peca_1_state_2:
    li    $t6, 2
    bne   $t5, $t6, peca_1_state_3
    addi  $t1, $t1, 2544
    addi  $t2, $t2, -8
    addi  $t3, $t3, -2560
    addi  $t4, $t4, -5112
    li    $t6, 1
    sw    $t6, 20($t0)
    j     end_peca_state
  peca_1_state_3:
    li    $t6, 3
    bne   $t5, $t6, peca_1_state_4
    addi  $t1, $t1, -5104
    addi  $t2, $t2, -2552
    addi  $t4, $t4, 2552
    li    $t6, 2
    sw    $t6, 20($t0)
    j     end_peca_state
  peca_1_state_4:
    li    $t6, 4
    bne   $t5, $t6, end_peca_state
    addi  $t1, $t1, 5112
    addi  $t2, $t2, 2560
    addi  $t3, $t3, 8
    addi  $t4, $t4, -2544
    li    $t6, 3
    sw    $t6, 20($t0)
    j     end_peca_state
  end_peca_state:
    sw    $t1, 0($t0)
    sw    $t2, 4($t0)
    sw    $t3, 8($t0)
    sw    $t4, 12($t0)
    j volta

  ###
  # PECA 2
  ###
  click_f_peca_2:
    lw    $t1, 0($t0)
    lw    $t2, 4($t0)
    lw    $t3, 8($t0)
    lw    $t4, 12($t0)
    lw    $t5, 20($t0)
  peca_2_state_1:
    li    $t6, 1
    bne   $t5, $t6, peca_2_state_2
    addi  $t1, $t1, -2552
    li    $t6, 4
    sw    $t6, 20($t0)
    j     end_peca_2_state
  peca_2_state_2:
    li    $t6, 2
    bne   $t5, $t6, peca_2_state_3
    addi  $t1, $t1, 2552
    addi  $t2, $t2, 8
    addi  $t3, $t3, 8
    li    $t6, 1
    sw    $t6, 20($t0)
    j     end_peca_2_state
  peca_2_state_3:
    li    $t6, 3
    bne   $t5, $t6, peca_2_state_4
    addi  $t4, $t4, 2552
    li    $t6, 2
    sw    $t6, 20($t0)
    j     end_peca_2_state
  peca_2_state_4:
    li    $t6, 4
    bne   $t5, $t6, end_peca_2_state
    addi  $t2, $t2, -8
    addi  $t3, $t3, -8
    addi  $t4, $t4, -2552
    li    $t6, 3
    sw    $t6, 20($t0)
    j     end_peca_2_state
  end_peca_2_state:
    sw    $t1, 0($t0)
    sw    $t2, 4($t0)
    sw    $t3, 8($t0)
    sw    $t4, 12($t0)
    j volta

  ###
  # PECA 3
  ###
  click_f_peca_3:
    lw    $t1, 0($t0)
    lw    $t2, 4($t0)
    lw    $t3, 8($t0)
    lw    $t4, 12($t0)
    lw    $t5, 20($t0)
  peca_3_state_1:
    li    $t6, 1
    bne   $t5, $t6, peca_3_state_2
    addi  $t1, $t1, -2552
    addi  $t3, $t3, 2552
    addi  $t4, $t4, 16
    li    $t6, 4
    sw    $t6, 20($t0)
    j     end_peca_3_state
  peca_3_state_2:
    li    $t6, 2
    bne   $t5, $t6, peca_3_state_3
    addi  $t1, $t1, 2560
    addi  $t2, $t2, 2560
    addi  $t3, $t3, 8
    addi  $t4, $t4, -8
    li    $t6, 1
    sw    $t6, 20($t0)
    j     end_peca_3_state
  peca_3_state_3:
    li    $t6, 3
    bne   $t5, $t6, peca_3_state_4
    addi  $t1, $t1, -16
    addi  $t2, $t2, -2552
    addi  $t4, $t4, 2552
    li    $t6, 2
    sw    $t6, 20($t0)
    j     end_peca_3_state
  peca_3_state_4:
    li    $t6, 4
    bne   $t5, $t6, end_peca_3_state
    addi  $t1, $t1, 8
    addi  $t2, $t2, -8
    addi  $t3, $t3, -2560
    addi  $t4, $t4, -2560
    li    $t6, 3
    sw    $t6, 20($t0)
    j     end_peca_3_state
  end_peca_3_state:
    sw    $t1, 0($t0)
    sw    $t2, 4($t0)
    sw    $t3, 8($t0)
    sw    $t4, 12($t0)
    j     volta

  ###
  # PECA 4
  ###
  click_f_peca_4:
    lw    $t1, 0($t0)
    lw    $t2, 4($t0)
    lw    $t3, 8($t0)
    lw    $t4, 12($t0)
    lw    $t5, 20($t0)
  peca_4_state_1:
    li    $t6, 1
    bne   $t5, $t6, peca_4_state_2
    addi  $t1, $t1, -8
    addi  $t2, $t2, 2544
    addi  $t3, $t3, 8
    addi  $t4, $t4, 2560
    li    $t6, 4
    sw    $t6, 20($t0)
    j     end_peca_4_state
  peca_4_state_2:
    li    $t6, 2
    bne   $t5, $t6, peca_4_state_3
    addi  $t2, $t2, 2552
    addi  $t3, $t3, -16
    addi  $t4, $t4, -2552
    li    $t6, 1
    sw    $t6, 20($t0)
    j     end_peca_4_state
  peca_4_state_3:
    li    $t6, 3
    bne   $t5, $t6, peca_4_state_4
    addi  $t1, $t1, -2560
    addi  $t2, $t2, -8
    addi  $t3, $t3, -2544
    addi  $t4, $t4, 8
    li    $t6, 2
    sw    $t6, 20($t0)
    j     end_peca_4_state
  peca_4_state_4:
    li    $t6, 4
    bne   $t5, $t6, end_peca_4_state
    addi  $t1, $t1, 2568
    addi  $t2, $t2, 16
    addi  $t3, $t3, 2552
    li    $t6, 3
    sw    $t6, 20($t0)
    j     end_peca_4_state
  end_peca_4_state:
    sw    $t1, 0($t0)
    sw    $t2, 4($t0)
    sw    $t3, 8($t0)
    sw    $t4, 12($t0)
    j     volta

  ###
  # PECA 5
  ###
  click_f_peca_5:
    lw    $t1, 0($t0)
    lw    $t2, 4($t0)
    lw    $t3, 8($t0)
    lw    $t4, 12($t0)
    lw    $t5, 20($t0)
  peca_5_state_1:
    li    $t6, 1
    bne   $t5, $t6, peca_5_state_2
    addi  $t1, $t1, -2552
    addi  $t2, $t2, -2552
    addi  $t3, $t3, -8
    addi  $t4, $t4, -8
    li    $t6, 4
    sw    $t6, 20($t0)
    j     end_peca_5_state
  peca_5_state_2:
    li    $t6, 2
    bne   $t5, $t6, peca_5_state_3
    addi  $t1, $t1, 2552
    addi  $t3, $t3, 2544
    addi  $t4, $t4, -8
    li    $t6, 1
    sw    $t6, 20($t0)
    j     end_peca_5_state
  peca_5_state_3:
    li    $t6, 3
    bne   $t5, $t6, peca_5_state_4
    addi  $t1, $t1, 8
    addi  $t2, $t2, 8
    addi  $t3, $t3, 2552
    addi  $t4, $t4, 2552
    li    $t6, 2
    sw    $t6, 20($t0)
    j     end_peca_5_state
  peca_5_state_4:
    li    $t6, 4
    bne   $t5, $t6, end_peca_5_state
    addi  $t1, $t1, -8
    addi  $t2, $t2, 2544
    addi  $t4, $t4, -2552
    li    $t6, 3
    sw    $t6, 20($t0)
    j     end_peca_5_state
  end_peca_5_state:
    sw    $t1, 0($t0)
    sw    $t2, 4($t0)
    sw    $t3, 8($t0)
    sw    $t4, 12($t0)
    j     volta

  ###
  # PECA 6
  ###
  click_f_peca_6:
    lw    $t1, 0($t0)
    lw    $t2, 4($t0)
    lw    $t3, 8($t0)
    lw    $t4, 12($t0)
    lw    $t5, 20($t0)
  peca_6_state_1:
    li    $t6, 1
    bne   $t5, $t6, peca_6_state_2
    addi  $t1, $t1, -2544
    addi  $t3, $t3, -2552
    addi  $t4, $t4, -8
    li    $t6, 4
    sw    $t6, 20($t0)
    j     end_peca_6_state
  peca_6_state_2:
    li    $t6, 2
    bne   $t5, $t6, peca_6_state_3
    addi  $t1, $t1, 2552
    addi  $t2, $t2, 8
    addi  $t3, $t3, 2560
    addi  $t4, $t4, 16
    li    $t6, 1
    sw    $t6, 20($t0)
    j     end_peca_6_state
  peca_6_state_3:
    li    $t6, 3
    bne   $t5, $t6, peca_6_state_4
    addi  $t1, $t1, 8
    addi  $t2, $t2, 2552
    addi  $t4, $t4, 2544
    li    $t6, 2
    sw    $t6, 20($t0)
    j     end_peca_6_state
  peca_6_state_4:
    li    $t6, 4
    bne   $t5, $t6, end_peca_6_state
    addi  $t1, $t1, -16
    addi  $t2, $t2, -2560
    addi  $t3, $t3, -8
    addi  $t4, $t4, -2552
    li    $t6, 3
    sw    $t6, 20($t0)
    j     end_peca_6_state
  end_peca_6_state:
    sw    $t1, 0($t0)
    sw    $t2, 4($t0)
    sw    $t3, 8($t0)
    sw    $t4, 12($t0)
    j     volta

  ###
  # PECA 7
  ###
  click_f_peca_7:
    lw    $t1, 0($t0)
    lw    $t2, 4($t0)
    lw    $t3, 8($t0)
    lw    $t4, 12($t0)
    lw    $t5, 20($t0)
  peca_7_state_1:
    li    $t6, 1
    bne   $t5, $t6, peca_7_state_2
    li    $t6, 4
    sw    $t6, 20($t0)
    j     end_peca_7_state
  peca_7_state_2:
    li    $t6, 2
    bne   $t5, $t6, peca_7_state_3
    li    $t6, 1
    sw    $t6, 20($t0)
    j     end_peca_7_state
  peca_7_state_3:
    li    $t6, 3
    bne   $t5, $t6, peca_7_state_4
    li    $t6, 2
    sw    $t6, 20($t0)
    j     end_peca_7_state
  peca_7_state_4:
    li    $t6, 4
    bne   $t5, $t6, end_peca_7_state
    li    $t6, 3
    sw    $t6, 20($t0)
    j     end_peca_7_state
  end_peca_7_state:
    sw    $t1, 0($t0)
    sw    $t2, 4($t0)
    sw    $t3, 8($t0)
    sw    $t4, 12($t0)
    j     volta

  ###
  # CLICK G
  ###
  click_g:
    li    $t5, 0xff000120
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
    beq   $t9, $zero, NAO_G

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_G

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_G

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_G

    addi  $s0, $s0, -8
    addi  $s1, $s1, -8
    addi  $s2, $s2, -8
    addi  $s3, $s3, -8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

  NAO_G:
    j volta

  ###
  # CLICK H
  ###
  click_h:
    li    $t5, 0xff000120
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
    beq   $t9, $t8, NAO_H

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_H

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_H

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_H

    addi  $s0, $s0, 8
    addi  $s1, $s1, 8
    addi  $s2, $s2, 8
    addi  $s3, $s3, 8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

  NAO_H:
    j     volta

  ###
  # CLICK B
  ###
  click_b:
    j  volta

  ###
  # CLICK J
  ###
  click_j:
    li    $t5, 0xff000220
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
    beq   $t9, $zero, NAO_J

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_J

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_J

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_J

    addi  $s0, $s0, -8
    addi  $s1, $s1, -8
    addi  $s2, $s2, -8
    addi  $s3, $s3, -8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

  NAO_J:
    j volta

  ###
  # CLICK K
  ###
  click_k:
    li    $t5, 0xff000220
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
    beq   $t9, $t8, NAO_K

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_K

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_K

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_K

    addi  $s0, $s0, 8
    addi  $s1, $s1, 8
    addi  $s2, $s2, 8
    addi  $s3, $s3, 8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

  NAO_K:
    j     volta

  ###
  # CLICK U
  ###
  click_u:
    j  volta

  ###
  # CLICK O
  ###
  click_o:
    li    $t5, 0xff000320
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
    beq   $t9, $zero, NAO_O

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_O

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_O

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9
    addi  $t9, $t9, -1               # posição do x -> 0 ~ 7
    beq   $t9, $zero, NAO_O

    addi  $s0, $s0, -8
    addi  $s1, $s1, -8
    addi  $s2, $s2, -8
    addi  $s3, $s3, -8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

  NAO_O:
    j volta

  ###
  # CLICK P
  ###
  click_p:
    li    $t5, 0xff000320
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
    beq   $t9, $t8, NAO_P

    li    $t8, 8
    li    $t9, 320
    div   $s1, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_P

    li    $t8, 8
    li    $t9, 320
    div   $s2, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_P

    li    $t8, 8
    li    $t9, 320
    div   $s3, $t9 # TODO: verificar se estamos usando isso
    mfhi  $t9
    div   $t9, $t8
    mflo  $t9                      # posição do x -> 1 ~ 8
    beq   $t9, $t8, NAO_P

    addi  $s0, $s0, 8
    addi  $s1, $s1, 8
    addi  $s2, $s2, 8
    addi  $s3, $s3, 8
    sw    $s0, 0($t5)
    sw    $s1, 4($t5)
    sw    $s2, 8($t5)
    sw    $s3, 12($t5)

  NAO_P:
    j     volta

  ###
  # CLICK L
  ###
  click_l:
    j  volta

###
#  LIMPA TELA
###
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

###
#  LIMPA AREA
# a0 = ponto inicial
# a1 = width
# a2 = height
###
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

###
# LIMPA LINHAS COMPLETAS DO TETRIS
# $a0 =  endereco do inicio da memoria do player
###
limpa_linhas:
  li   $t0, 18		            # inicializa i = 18

ll_FOR1:
  beq   $t0, $zero, CLOSE      # termina caso chegue em zero
  move  $t5, $a0
  addu  $t5, $t5, $t0          # coloca na posição de memoria

  lbu   $t2, 0($t5)            # pega o byte da linha $t0

  li    $t3, 0xFF
  bne   $t2, $t3, ll_FOR1_END  # verifica se a linha está preenchida

  move  $t1, $t0               # j = i

  # adiciona pontuacao
  lw    $t8, 24($a0)
  addi  $t8, $t8, 1
  sw    $t8, 24($a0)

ll_FOR2:
  beq   $t1, $zero, ll_FOR1_END

  addi  $t5, $t5, -1           # decrementa o endereço
  lb    $t4, 0($t5)              # pega a linha anterior
  sb    $t4, 1($t5)              # coloca na linha que foi apagada

ll_FOR2_END:
  addi  $t1, $t1, -1           # decrementa o j
  j ll_FOR2

ll_FOR1_END:
  addi $t0, $t0, -1           # decrementa o i
  j ll_FOR1                   # volta para o FOR1

###
# Dorme
###
  dorme:
    ori    $v0, $zero, 32
    ori    $a0, $zero, 30
    syscall
    jr     $ra

###
# MUSICA
###
  timeToLoad:
    li $a0, 0
    li $a1, 200
    li $a2, 0
    li $a3, 100
    li $v0, 33
    syscall

    jr $ra

  suitAudio:
    li $a2, 0
    li $a3, 100
    li $v0, 33

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 100
    syscall

    li $a0, 58
    li $a1, 100
    syscall

    li $a0, 59
    li $a1, 400
    syscall

    li $a0, 51
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 400
    syscall

    li $a0, 59
    li $a1, 600
    syscall

    li $a0, 0
    li $a1, 100
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 70
    li $a1, 200
    syscall

    li $a0, 71
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 400
    syscall

    li $a0, 71
    li $a1, 800
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 400
    syscall

    li $a0, 69
    li $a1, 800
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 600
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 600
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 71
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 100
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 800
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 800
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 68
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 68
    li $a1, 800
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 65
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 200
    syscall

    li $a0, 68
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 65
    li $a1, 400
    syscall

    li $a0, 61
    li $a1, 400
    syscall

    li $a0, 66
    li $a1, 600
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 800
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 53
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 53
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 100
    syscall

    li $a0, 57
    li $a1, 100
    syscall

    li $a0, 59
    li $a1, 100
    syscall

    li $a0, 57
    li $a1, 100
    syscall

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 400
    syscall

    li $a0, 54
    li $a1, 1400
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 400
    syscall

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 800
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 100
    syscall

    li $a0, 53
    li $a1, 100
    syscall

    li $a0, 54
    li $a1, 100
    syscall

    li $a0, 53
    li $a1, 400
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 53
    li $a1, 1400
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 600
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 600
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 71
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 63
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 100
    syscall

    li $a0, 66
    li $a1, 100
    syscall

    li $a0, 67
    li $a1, 100
    syscall

    li $a0, 66
    li $a1, 100
    syscall

    li $a0, 67
    li $a1, 100
    syscall

    li $a0, 66
    li $a1, 100
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 600
    syscall

    li $a0, 0
    li $a1, 400
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 600
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 800
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 800
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 600
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 800
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 400
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 50
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 49
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 50
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 47
    li $a1, 200
    syscall

    li $a0, 50
    li $a1, 200
    syscall

    li $a0, 49
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 100
    syscall

    li $a0, 61
    li $a1, 100
    syscall

    li $a0, 62
    li $a1, 100
    syscall

    li $a0, 61
    li $a1, 100
    syscall

    li $a0, 62
    li $a1, 100
    syscall

    li $a0, 61
    li $a1, 100
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 63
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 800
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 68
    li $a1, 200
    syscall

    li $a0, 65
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 600
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 100
    syscall

    li $a0, 58
    li $a1, 100
    syscall

    li $a0, 59
    li $a1, 100
    syscall

    li $a0, 58
    li $a1, 100
    syscall

    li $a0, 59
    li $a1, 100
    syscall

    li $a0, 58
    li $a1, 100
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 2000
    syscall

    jr $ra

  minuetAudioChorus:
    li $a2, 0
    li $a3, 100
    li $v0, 33

    li $a0, 62
    li $a1, 400
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 400
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 400
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 0
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 400
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 400
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 800
    syscall

    jr $ra

  minuetAudioBridge:
    li $a2, 0
    li $a3, 100
    li $v0, 33

    li $a0, 71
    li $a1, 400
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 200
    syscall

    li $a0, 71
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 400
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 400
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 400
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 66
    li $a1, 200
    syscall

    li $a0, 67
    li $a1, 400
    syscall

    li $a0, 66
    li $a1, 400
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 66
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    li $a0, 61
    li $a1, 400
    syscall

    li $a0, 62
    li $a1, 1000
    syscall

    li $a0, 62
    li $a1, 400
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 400
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 400
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 60
    li $a1, 400
    syscall

    li $a0, 59
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    li $a0, 50
    li $a1, 200
    syscall

    li $a0, 52
    li $a1, 200
    syscall

    li $a0, 54
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 400
    syscall

    li $a0, 60
    li $a1, 50
    syscall

    li $a0, 59
    li $a1, 50
    syscall

    li $a0, 60
    li $a1, 50
    syscall

    li $a0, 59
    li $a1, 50
    syscall

    li $a0, 60
    li $a1, 50
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 400
    syscall

    li $a0, 54
    li $a1, 400
    syscall

    li $a0, 55
    li $a1, 1000
    syscall

    jr $ra

  koroAudioChorus:
    li $a2, 0
    li $a3, 100
    li $v0, 33

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 800
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 400
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 60
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 600
    syscall

    li $a0, 62
    li $a1, 400
    syscall

    li $a0, 65
    li $a1, 200
    syscall

    li $a0, 69
    li $a1, 400
    syscall

    li $a0, 67
    li $a1, 200
    syscall

    li $a0, 65
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 600
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 62
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 59
    li $a1, 400
    syscall

    li $a0, 59
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 62
    li $a1, 400
    syscall

    li $a0, 64
    li $a1, 400
    syscall

    li $a0, 60
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    li $a0, 57
    li $a1, 400
    syscall

    jr $ra

  koroAudioBridge:
    li $a2, 0
    li $a3, 100
    li $v0, 33

    li $a0, 52
    li $a1, 500
    syscall

    li $a0, 48
    li $a1, 500
    syscall

    li $a0, 50
    li $a1, 500
    syscall

    li $a0, 50
    li $a1, 500
    syscall

    li $a0, 47
    li $a1, 500
    syscall

    li $a0, 48
    li $a1, 500
    syscall

    li $a0, 45
    li $a1, 500
    syscall

    li $a0, 44
    li $a1, 500
    syscall

    li $a0, 47
    li $a1, 500
    syscall

    li $a0, 52
    li $a1, 500
    syscall

    li $a0, 48
    li $a1, 500
    syscall

    li $a0, 50
    li $a1, 500
    syscall

    li $a0, 47
    li $a1, 500
    syscall

    li $a0, 48
    li $a1, 500
    syscall

    li $a0, 52
    li $a1, 500
    syscall

    li $a0, 57
    li $a1, 500
    syscall

    li $a0, 56
    li $a1, 500
    syscall

    jr $ra

  endAudio:
    li $a2, 0
    li $a3, 100
    li $v0, 33

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 51
    li $a1, 200
    syscall

    li $a0, 55
    li $a1, 200
    syscall

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 51
    li $a1, 200
    syscall

    li $a0, 56
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 51
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 51
    li $a1, 200
    syscall

    li $a0, 61
    li $a1, 200
    syscall

    li $a0, 60
    li $a1, 200
    syscall

    li $a0, 58
    li $a1, 200
    syscall

    jr $ra

###
# TERMINA O JOGO
###
end_game:
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
# 0xff000034 - 0xff000038 =>     -> estado do bloco (4)
# 0xff000038 - 0xff00003b =>     -> pontuacao

# 0xff000100 - 0xff000120 => matrix 2
# 0xff000120 - 0xff000124 => $s0 -> pos bloco 1
# 0xff000124 - 0xff000128 => $s1 -> pos bloco 2
# 0xff000128 - 0xff00012b => $s2 -> pos bloco 3
# 0xff00012b - 0xff000130 => $s3 -> pos bloco 4
# 0xff000130 - 0xff000134 => $s4 -> qual bloco (7)
# 0xff000134 - 0xff000138 =>     -> estado do bloco (4)
# 0xff000138 - 0xff00013b =>     -> pontuacao

# 0xff000200 - 0xff000220 => matrix 3
# 0xff000220 - 0xff000224 => $s0 -> pos bloco 1
# 0xff000224 - 0xff000228 => $s1 -> pos bloco 2
# 0xff000228 - 0xff00022b => $s2 -> pos bloco 3
# 0xff00022b - 0xff000230 => $s3 -> pos bloco 4
# 0xff000230 - 0xff000234 => $s4 -> qual bloco (7)
# 0xff000234 - 0xff000238 =>     -> estado do bloco (4)
# 0xff000238 - 0xff00023b =>     -> pontuacao

# 0xff000300 - 0xff000320 => matrix 4
# 0xff000320 - 0xff000324 => $s0 -> pos bloco 1
# 0xff000324 - 0xff000328 => $s1 -> pos bloco 2
# 0xff000328 - 0xff00032b => $s2 -> pos bloco 3
# 0xff00032b - 0xff000330 => $s3 -> pos bloco 4
# 0xff000330 - 0xff000334 => $s4 -> qual bloco (7)
# 0xff000334 - 0xff000338 =>     -> estado do bloco (4)
# 0xff000338 - 0xff00033b =>     -> pontuacao


# 0xff000400 => 1 byte para indicar seta da tela musica
# 0xff000410 => indica se o player ta apertando pra baixo

# 1 player
# li  $t0, 24984
# li  $t1, 24992
# li  $t2, 25000
# li  $t3, 25008

# 2 players
# li  $t0, 25064
# li  $t1, 25072
# li  $t2, 25080
# li  $t3, 25088

# 3 players
# li  $t0, 25144
# li  $t1, 25152
# li  $t2, 25160
# li  $t3, 25168

# 4 players
# li  $t0, 25224
# li  $t1, 25232
# li  $t2, 25240
# li  $t3, 25248

# 0xff..00 + 24

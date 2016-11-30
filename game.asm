################################################################################
# JOGO - ORGANIZACAO E ARQUITETURA DE COMPUTADORES
# AUTOR - LUIZ FERNANDO VIEIRA DE CASTRO FERREIRA
# https://xem.github.io/3DShomebrew/tools/image-to-bin.html
.data
  nintendo_img: .asciiz "nintendo.bin"
  menu_img:     .asciiz "menu.bin"
  seta_img:     .asciiz "seta.bin"
  bg_1_pl_img:  .asciiz "bg_1_player.bin"
  bg_2_pl_img:  .asciiz "bg_2_player.bin"
  bg_3_pl_img:  .asciiz "bg_3_player.bin"
  bg_4_pl_img:  .asciiz "bg_4_player.bin"
  peca_1_img:   .asciiz "peca_1_one_point.bin"
  peca_2_img:   .asciiz "peca_2_one_point.bin"
  peca_3_img:   .asciiz "peca_3_one_point.bin"
  peca_4_img:   .asciiz "peca_4_one_point.bin"
  peca_5_img:   .asciiz "peca_5_one_point.bin"
  peca_6_img:   .asciiz "peca_6_one_point.bin"
  peca_7_img:   .asciiz "peca_7_one_point.bin"
  peca_1_all:   .asciiz "peca_1.bin"
  peca_2_all:   .asciiz "peca_2.bin"
  peca_3_all:   .asciiz "peca_3.bin"
  peca_4_all:   .asciiz "peca_4.bin"
  peca_5_all:   .asciiz "peca_5.bin"
  peca_6_all:   .asciiz "peca_6.bin"
  peca_7_all:   .asciiz "peca_7.bin"
  anim_1_img:   .asciiz "bg_1_player.bin"
  anim_2_img:   .asciiz "bg_2_player.bin"
  anim_3_img:   .asciiz "bg_3_player.bin"
  anim_4_img:   .asciiz "bg_4_player.bin"
  anim_5_img:   .asciiz "bg_1_player.bin"
  anim_6_img:   .asciiz "bg_2_player.bin"
  anim_7_img:   .asciiz "bg_3_player.bin"
  anim_8_img:   .asciiz "bg_4_player.bin"
  anim_9_img:   .asciiz "bg_1_player.bin"
  anim_10_img:  .asciiz "bg_2_player.bin"
  anim_11_img:  .asciiz "bg_3_player.bin"
  anim_12_img:  .asciiz "bg_4_player.bin"
  anim_13_img:  .asciiz "bg_1_player.bin"
  anim_14_img:  .asciiz "bg_2_player.bin"
  anim_15_img:  .asciiz "bg_3_player.bin"
  anim_16_img:  .asciiz "bg_4_player.bin"
  input:        .asciiz "Teve Input !!! \n"
  ninput:       .asciiz "... \n"
  zzz:          .asciiz "... \n"
  mime:         .asciiz "dorme \n"
  change:       .asciiz "CHANGE STATE \n"
  inpt_space:   .asciiz "*** CLICOU SPACE *** \n"
  inpt_a:       .asciiz "*** CLICOU A *** \n"
  inpt_s:       .asciiz "*** CLICOU S *** \n"
  inpt_d:       .asciiz "*** CLICOU D *** \n"
  inpt_w:       .asciiz "*** CLICOU W *** \n"

  .eqv  BASE_DISPLAY        0x10040000
  .eqv  DISPLAY_NEXT_LINE   0x140 #320 # 0x200 #512

  # NINTENDO
  .eqv  NINTENDO_RAM     0x10010100
  .eqv  NINTENDO_POS     0x10040024
  .eqv  NINTENDO_WIDTH   260
  .eqv  NINTENDO_HEIGHT  43

  # MENU
  .eqv  MENU_RAM         0x10012cac
  .eqv  MENU_POS         0x10040000
  .eqv  MENU_WIDTH       320
  .eqv  MENU_HEIGHT      240

  # SETA
  .eqv  SETA_RAM         0x100258AC
  .eqv  SETA_POS_1       0x1004ce71
  .eqv  SETA_POS_2       0x1004cee5
  .eqv  SETA_POS_3       0x1004ec71
  .eqv  SETA_POS_4       0x1004f0a5
  .eqv  SETA_WIDTH       8
  .eqv  SETA_HEIGHT      8

  # GAME 1 PLAYER
  .eqv  GAME_BG_1_PLAYER_RAM    0x100258EC
  .eqv  GAME_BG_1_PLAYER_POS    0x10040000
  .eqv  GAME_BG_1_PLAYER_WIDTH  320
  .eqv  GAME_BG_1_PLAYER_HEIGHT 240

  # GAME 2 PLAYER
  .eqv  GAME_BG_2_PLAYER_RAM    0x100258EC
  .eqv  GAME_BG_2_PLAYER_POS    0x10040000
  .eqv  GAME_BG_2_PLAYER_WIDTH  320
  .eqv  GAME_BG_2_PLAYER_HEIGHT 240

  # GAME 3 PLAYER
  .eqv  GAME_BG_3_PLAYER_RAM    0x100258EC
  .eqv  GAME_BG_3_PLAYER_POS    0x10040000
  .eqv  GAME_BG_3_PLAYER_WIDTH  320
  .eqv  GAME_BG_3_PLAYER_HEIGHT 240

  # GAME 4 PLAYER
  .eqv  GAME_BG_4_PLAYER_RAM     0x100258EC
  .eqv  GAME_BG_4_PLAYER_POS     0x10040000
  .eqv  GAME_BG_4_PLAYER_WIDTH   320
  .eqv  GAME_BG_4_PLAYER_HEIGHT  240

  # PECAS
  .eqv  PECA_POS           0x10040040
  .eqv  PECA_WIDTH         8
  .eqv  PECA_HEIGHT        8
  .eqv  PECA_1_RAM         0x10010000 # PECA 1
  .eqv  PECA_2_RAM         0x10010000 # PECA 2
  .eqv  PECA_3_RAM         0x10010000 # PECA 3
  .eqv  PECA_4_RAM         0x10010000 # PECA 4
  .eqv  PECA_5_RAM         0x10010000 # PECA 5
  .eqv  PECA_6_RAM         0x10010000 # PECA 6
  .eqv  PECA_7_RAM         0x10010000 # PECA 7

  # END ANIM
  .eqv  END_ANIM_RAM      0x10012cac
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
    jal   limpa_tela

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
    la  $a0, bg_1_pl_img
    la  $a1, GAME_BG_1_PLAYER_RAM
    la  $a2, GAME_BG_1_PLAYER_WIDTH
    la  $a3, GAME_BG_1_PLAYER_HEIGHT
    jal load_image
    li    $s7, 2
    j load_game_state

  chance_game_state_2:
    la  $a0, bg_2_pl_img
    la  $a1, GAME_BG_2_PLAYER_RAM
    la  $a2, GAME_BG_2_PLAYER_WIDTH
    la  $a3, GAME_BG_2_PLAYER_HEIGHT
    jal load_image
    li    $s7, 2
    j load_game_state

  chance_game_state_3:
    la  $a0, bg_3_pl_img
    la  $a1, GAME_BG_3_PLAYER_RAM
    la  $a2, GAME_BG_3_PLAYER_WIDTH
    la  $a3, GAME_BG_3_PLAYER_HEIGHT
    jal load_image
    li    $s7, 2
    j load_game_state

  chance_game_state_4:
    la  $a0, bg_4_pl_img
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

    la  $a0, peca_1_img
    la  $a1, PECA_1_RAM
    jal load_image

    la  $a0, peca_2_img
    la  $a1, PECA_2_RAM
    jal load_image

    la  $a0, peca_3_img
    la  $a1, PECA_3_RAM
    jal load_image

    la  $a0, peca_4_img
    la  $a1, PECA_4_RAM
    jal load_image

    la  $a0, peca_5_img
    la  $a1, PECA_5_RAM
    jal load_image

    la  $a0, peca_6_img
    la  $a1, PECA_6_RAM
    jal load_image

    la  $a0, peca_7_img
    la  $a1, PECA_7_RAM
    jal load_image

    li  $t5, 0xff000020

    # depende do rand
    li  $t0, 24968
    li  $t1, 24976
    li  $t2, 24984
    li  $t3, 24992
    li  $t4, 1
    # -------

    sw  $t0, 0($t5)
    sw  $t1, 4($t5)
    sw  $t2, 8($t5)
    sw  $t3, 12($t5)
    sw  $t4, 16($t5)

    j game_state

  game_state:
    # Começa na posição 0xff000000
    # mapa 4 * 32 = 128bits = 16bytes -> 0x00000010
    # peca 1 * 32 =  32bits =  4bytes -> 0x00000004

    # 0xff000000 - 0xff000020 => matrix 1
    # 0xff000020 - 0xff000024 => $s0 -> pos bloco 1
    # 0xff000024 - 0xff000028 => $s1 -> pos bloco 2
    # 0xff000028 - 0xff00002b => $s2 -> pos bloco 3
    # 0xff00002b - 0xff000030 => $s3 -> pos bloco 4
    # 0xff000030 - 0xff000034 => $s4 -> qual bloco (7)

    # 0xff000000 - 0xff000020 => matrix 2
    # 0xff000020 - 0xff000024 => $s0 -> pos bloco 1
    # 0xff000024 - 0xff000028 => $s1 -> pos bloco 2
    # 0xff000028 - 0xff00002b => $s2 -> pos bloco 3
    # 0xff00002b - 0xff000030 => $s3 -> pos bloco 4
    # 0xff000030 - 0xff000034 => $s4 -> qual bloco (7)

    # 0xff000000 - 0xff000020 => matrix 3
    # 0xff000020 - 0xff000024 => $s0 -> pos bloco 1
    # 0xff000024 - 0xff000028 => $s1 -> pos bloco 2
    # 0xff000028 - 0xff00002b => $s2 -> pos bloco 3
    # 0xff00002b - 0xff000030 => $s3 -> pos bloco 4
    # 0xff000030 - 0xff000034 => $s4 -> qual bloco (7)

    # 0xff000000 - 0xff000020 => matrix 4
    # 0xff000020 - 0xff000024 => $s0 -> pos bloco 1
    # 0xff000024 - 0xff000028 => $s1 -> pos bloco 2
    # 0xff000028 - 0xff00002b => $s2 -> pos bloco 3
    # 0xff00002b - 0xff000030 => $s3 -> pos bloco 4
    # 0xff000030 - 0xff000034 => $s4 -> qual bloco (7)

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
    li  $t7, 0x10040000
    li  $t5, 0xff000020
    lw  $s0, 0($t5)
    lw  $s1, 4($t5)
    lw  $s2, 8($t5)
    lw  $s3, 12($t5)
    lw  $s4, 16($t5)

    li    $a0, PECA_HEIGHT # $a0 = width
    li    $a3, PECA_WIDTH  # $a3 = height
    li    $a1, PECA_1_RAM  # $a1 = endereco na RAM

    add   $a2, $s0, $t7
    jal   draw_sprite

    add   $a2, $s1, $t7
    jal   draw_sprite

    add   $a2, $s2, $t7
    jal   draw_sprite

    add   $a2, $s3, $t7
    jal   draw_sprite

    li  $t5, 0xff000020

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
    j     update

#######
# a0 = qual pos para aquele player
# a1 = pos da peça
# t3 = x
# t4 = y
# t6 = pos da memoria certa
escreve_na_matrix:
    li   $t0, 320
    div  $a1, $t0
    mfhi $t3
    mflo $t4
    addi $t3, $t3, -8

    addi $t4, $t4, -70
    li   $t0, 8
    div  $t4, $t0
    mflo $t4

    move  $t5, $a0
    addu $t5, $t5, $t4
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

    li   $t0, 16

    beq  $s5, $t0, end_anim_end
    addi $s5, $s5, 1

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

  end_anim_end:
    j nenhum_state

  end_anim_draw_1:
    la  $a0, anim_1_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite

    li    $v0, 4
    la    $a0, change
    syscall

    j   end_anim_end

  end_anim_draw_2:
    la  $a0, anim_2_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_3:
    la  $a0, anim_3_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_4:
    la  $a0, anim_4_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_5:
    la  $a0, anim_5_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_6:
    la  $a0, anim_6_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_7:
    la  $a0, anim_7_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_8:
    la  $a0, anim_8_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_9:
    la  $a0, anim_9_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_10:
    la  $a0, anim_10_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

  end_anim_draw_11:
    la  $a0, anim_11_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

    end_anim_draw_12:
    la  $a0, anim_12_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

    end_anim_draw_13:
    la  $a0, anim_13_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

    end_anim_draw_14:
    la  $a0, anim_14_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

    end_anim_draw_15:
    la  $a0, anim_15_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

    end_anim_draw_16:
    la  $a0, anim_16_img
    la  $a1, END_ANIM_RAM
    la  $a2, END_ANIM_WIDTH
    la  $a3, END_ANIM_HEIGHT
    jal load_image
    li  $a1, END_ANIM_RAM
    li  $a2, END_ANIM_POS
    li  $a0, END_ANIM_WIDTH
    li  $a3, END_ANIM_HEIGHT
    jal draw_sprite
    j   end_anim_end
    j end_anim_end

###
# NENHUM
###
  nenhum_state:
    # nao faz nada

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
#
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
    li    $t2, 0x6E               # n
    beq   $t5, $t2, click_n

    li    $t5, 0
  volta:
    jr    $ra

  click_a:
    li    $t0, 2
    li    $t1, 4
    beq   $s6, $t0, click_a_seta_2 # 1
    beq   $s6, $t1, click_a_seta_4 # 3
    j     volta

  click_a_seta_2:
    li    $s6, 1

    li $a2, 0
    li $a3, 200
    li $v0, 31
    li $a0, 60
    li $a1, 100
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
    li    $t0, 1
    li    $t1, 3
    beq   $s6, $t0, click_d_seta_1 # 2
    beq   $s6, $t1, click_d_seta_3 # 4
    j volta

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

  ################################################################################
  # Dorme
  #
  #
  #

  dorme:
    # li    $v0, 4
    # la    $a0, mime
    # syscall
    ori    $v0, $zero, 32		     # 32 é o syscall para sleep
    ori    $a0, $zero, 0  		   # $a0 é a quantidade de miliseconds que dorme
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

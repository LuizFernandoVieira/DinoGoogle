###
# DESENHA GAME STATE
###
  desenha_game_state_bg:
    li   $t0, 1
    li   $t1, 2
    li   $t2, 3
    li   $t3, 4

    beq  $s6, $t0, game_state_1
    beq  $s6, $t1, game_state_2
    beq  $s6, $t2, game_state_3
    beq  $s6, $t3, game_state_4
    jr   $ra

  game_state_1:
    li   $a1, GAME_BG_1_PLAYER_RAM
    li   $a2, GAME_BG_1_PLAYER_POS
    li   $a0, GAME_BG_1_PLAYER_WIDTH
    li   $a3, GAME_BG_1_PLAYER_HEIGHT
    jal  draw_sprite
    jr   $ra

  game_state_2:
    li   $a1, GAME_BG_2_PLAYER_RAM
    li   $a2, GAME_BG_2_PLAYER_POS
    li   $a0, GAME_BG_2_PLAYER_WIDTH
    li   $a3, GAME_BG_2_PLAYER_HEIGHT
    jal  draw_sprite
    jr   $ra

  game_state_3:
    li   $a1, GAME_BG_3_PLAYER_RAM
    li   $a2, GAME_BG_3_PLAYER_POS
    li   $a0, GAME_BG_3_PLAYER_WIDTH
    li   $a3, GAME_BG_3_PLAYER_HEIGHT
    jal  draw_sprite
    jr   $ra

  game_state_4:
    li   $a1, GAME_BG_4_PLAYER_RAM
    li   $a2, GAME_BG_4_PLAYER_POS
    li   $a0, GAME_BG_4_PLAYER_WIDTH
    li   $a3, GAME_BG_4_PLAYER_HEIGHT
    jal  draw_sprite
    jr   $ra

.data

  # $a0 = pitch
  # $a1 = duration
  # $a2 = instrument
  # $a3 = volume

.text

  main:
    jal timeToLoad
    jal minuetAudioChorus
    jal minuetAudioChorus
    jal minuetAudioChorus
    jal minuetAudioBridge
    jal minuetAudioBridge
    jal timeToLoad
    jal suitAudio
    jal timeToLoad
    jal koroAudioChorus
    jal koroAudioChorus
    jal koroAudioBridge
    jal koroAudioChorus
    jal endAudio
    jal endAudio
    jal endAudio
    jal endAudio
    jal fim

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

    li $a0, 54 #66 #54
    li $a1, 200
    syscall

    li $a0, 59 #71 #59
    li $a1, 200
    syscall

    li $a0, 58 #70 #58
    li $a1, 200
    syscall

    li $a0, 59 #71 #59
    li $a1, 100
    syscall

    li $a0, 58 #70 #58
    li $a1, 100
    syscall

    li $a0, 59 #71 #59
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

    li $a0, 52 # 48
    li $a1, 500
    syscall

    li $a0, 48 # 45
    li $a1, 500
    syscall

    li $a0, 50 #
    li $a1, 500
    syscall

    li $a0, 50 #
    li $a1, 500
    syscall

    li $a0, 47 #
    li $a1, 500
    syscall

    li $a0, 48 # 45
    li $a1, 500
    syscall

    li $a0, 45 #
    li $a1, 500
    syscall

    li $a0, 44 #
    li $a1, 500
    syscall

    li $a0, 47 #
    li $a1, 500
    syscall

    li $a0, 52 #
    li $a1, 500
    syscall

    li $a0, 48 #
    li $a1, 500
    syscall

    li $a0, 50 #
    li $a1, 500
    syscall

    li $a0, 47 #
    li $a1, 500
    syscall

    li $a0, 48 #
    li $a1, 500
    syscall

    li $a0, 52 #
    li $a1, 500
    syscall

    li $a0, 57 #
    li $a1, 500
    syscall

    li $a0, 56 #
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

  fim:
    li $v0, 10
    syscall

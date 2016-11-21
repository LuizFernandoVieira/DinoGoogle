.data
	xDir:			.word -1		# Empieza el movimiento hacia la izquierda de las naves enemigas
	VidasNave:		.word 0			# Dice la cantidad de vidas de la nave cuando llega a 4 significa que perdió las vidas y GameOver
	ColorNave:		.word 0x00ff8000
	ColorAzul:		.word 0x0066CC		
	ColorEnemigos:		.word 0x00ffffff
	ColorNegro:		.word 0x00000000
	ColorBala:		.word 0x00990000


.text
JuegoNuevo:
		jal ClearBoard		

				
Space:							#Pintar la palabra SPACE
#S
		li $a0, 4 
		li $a1, 1 
		lw $a2, ColorAzul
		li $a3, 7 
		jal DrawHorizontalLine
		
		li $a1, 2 
		jal DrawHorizontalLine
		 
		li $a1, 3 
		jal DrawHorizontalLine
		
		li $a0, 36
		li $a1, 1
		lw $a2, ColorAzul
		jal DrawPoint
		
		
		li $a0, 39
		li $a1, 2
		jal DrawPoint
#P
		li $a0, 9 
		li $a1, 1 
		lw $a2, ColorAzul
		li $a3, 12 
		jal DrawHorizontalLine
		
		li $a0, 41
		li $a1, 2 
		li $a3, 44 
		jal DrawHorizontalLine
		
		li $a0, 44
		li $a1, 1
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 12
		li $a1, 2
		jal DrawPoint
		
		li $a0, 9
		li $a1, 3
		jal DrawPoint
#A
		li $a0, 14 
		li $a1, 1 
		lw $a2, ColorAzul
		li $a3, 17 
		jal DrawHorizontalLine
		
		li $a1, 2  
		jal DrawHorizontalLine
		
		li $a0, 46
		li $a1, 1
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 49
		li $a1, 1
		jal DrawPoint
		
		li $a0, 46
		li $a1, 2
		jal DrawPoint
		
		li $a0, 49
		li $a1, 2
		jal DrawPoint
		
		li $a0, 14
		li $a1, 3
		jal DrawPoint
		
		li $a0, 17
		li $a1, 3
		jal DrawPoint
#C
		li $a0, 19 
		li $a1, 1 
		lw $a2, ColorAzul
		li $a3, 22 
		jal DrawHorizontalLine
		
		li $a1, 3  
		jal DrawHorizontalLine
		
		li $a0, 51
		li $a1, 1
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 19
		li $a1, 2
		jal DrawPoint
	
		li $a0, 51
		li $a1, 2
		jal DrawPoint
		
#E
		li $a0, 24 
		li $a1, 1 
		lw $a2, ColorAzul
		li $a3, 27 
		jal DrawHorizontalLine
		
		li $a1, 3  
		jal DrawHorizontalLine
		
		li $a0, 24 
		li $a1, 2 
		lw $a2, ColorAzul
		li $a3, 26 
		jal DrawHorizontalLine
		
		li $a0, 56
		li $a1, 1
		lw $a2, ColorAzul
		jal DrawPoint
	
		li $a0, 56
		li $a1, 2
		jal DrawPoint
		
Attack:						#Pintar la palabra ATTACK
#A
		li $a0, 34 
		li $a1, 4 
		lw $a2, ColorAzul
		li $a3, 37 
		jal DrawHorizontalLine
		
		li $a1, 5  
		jal DrawHorizontalLine
		
		li $a0, 2
		li $a1, 5
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 5
		li $a1, 5
		jal DrawPoint
		
		li $a0, 2
		li $a1, 6
		jal DrawPoint
		
		li $a0, 34
		li $a1, 6
		jal DrawPoint
		
		li $a0, 5
		li $a1, 6
		jal DrawPoint
		
		li $a0, 37
		li $a1, 6
		jal DrawPoint
#TT
		li $a0, 39 
		li $a1, 4 
		lw $a2, ColorAzul
		li $a3, 46 
		jal DrawHorizontalLine
		
		li $a0, 9
		li $a1, 5
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 41
		jal DrawPoint
		
		li $a0, 9
		li $a1, 6
		jal DrawPoint
		
		li $a0, 41
		jal DrawPoint
		
		li $a0, 12
		li $a1, 5
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 44
		jal DrawPoint
		
		li $a0, 12
		li $a1, 6
		jal DrawPoint
		
		li $a0, 44
		jal DrawPoint
#A
		li $a0, 48 
		li $a1, 4 
		lw $a2, ColorAzul
		li $a3, 51 
		jal DrawHorizontalLine
		
		li $a1, 5  
		jal DrawHorizontalLine
		
		li $a0, 16
		li $a1, 5
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 19
		li $a1, 5
		jal DrawPoint
		
		li $a0, 16
		li $a1, 6
		jal DrawPoint
		
		li $a0, 48
		li $a1, 6
		jal DrawPoint
		
		li $a0, 19
		li $a1, 6
		jal DrawPoint
		
		li $a0, 51
		li $a1, 6
		jal DrawPoint		
#C
		li $a0, 53 
		li $a1, 4 
		lw $a2, ColorAzul
		li $a3, 56 
		jal DrawHorizontalLine
		
		li $a1, 6  
		jal DrawHorizontalLine
		
		li $a0, 21
		li $a1, 5
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 53
		li $a1, 5
		jal DrawPoint
	
		li $a0, 21
		li $a1, 6
		jal DrawPoint
#K		
		li $a0, 58
		li $a1, 4
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 26
		li $a1, 5
		jal DrawPoint
	
		li $a0, 58
		li $a1, 5
		jal DrawPoint
		
		li $a0, 26
		li $a1, 6
		jal DrawPoint
		
		li $a0, 58
		li $a1, 6
		jal DrawPoint
		
		li $a0, 59
		li $a1, 5
		jal DrawPoint
		
		li $a0, 28
		li $a1, 5
		jal DrawPoint
		
		li $a0, 61
		li $a1, 4
		jal DrawPoint
		
		li $a0, 28
		li $a1, 6
		jal DrawPoint
		
		
		li $a0, 61
		li $a1, 6
		jal DrawPoint

Invasor:							#Pintar al invasor
		li $a0, 12 
		li $a1, 8 
		lw $a2, ColorAzul
		li $a3, 13
		jal DrawHorizontalLine
		
		li $a1, 11  
		jal DrawHorizontalLine
		
		li $a0, 17 
		li $a1, 8 
		li $a3, 18 
		jal DrawHorizontalLine
		
		li $a1, 11  
		jal DrawHorizontalLine
		
		li $a0, 12 
		li $a1, 9 
		li $a3, 18 
		jal DrawHorizontalLine
		
		li $a0, 43 
		li $a1, 9 
		li $a3, 44 
		jal DrawHorizontalLine
		
		li $a0, 46 
		li $a1, 9 
		li $a3, 48 
		jal DrawHorizontalLine
		
		li $a0, 50 
		li $a1, 9 
		li $a3, 51 
		jal DrawHorizontalLine
		
		li $a0, 10 
		li $a1, 10 
		li $a3, 20 
		jal DrawHorizontalLine
		
		li $a0, 44 
		li $a1, 10 
		li $a3, 50 
		jal DrawHorizontalLine
		
		li $a0, 45 
		li $a1, 11 
		li $a3, 46 
		jal DrawHorizontalLine
		
		li $a0, 48 
		li $a1, 11 
		li $a3, 49 
		jal DrawHorizontalLine
		
		li $a0, 42
		li $a1, 10
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 10
		li $a1, 11
		jal DrawPoint
	
		li $a0, 52
		li $a1, 10
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a0, 20
		li $a1, 11
		jal DrawPoint
		
		li $a0, 45
		li $a1, 8
		jal DrawPoint
		
		li $a0, 49
		li $a1, 8
		jal DrawPoint
		
		li $a0, 45
		li $a1, 9
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 49
		li $a1, 9
		lw $a2, ColorEnemigos
		jal DrawPoint
	
###########################################################################################################

Espera:						#Espera que se precione cualquier tecla, se coloco la palabra Enter

Enter:						#Pintar la palabra ENTER
#E
		li $a0, 4 
		li $a1, 13 
		lw $a2, ColorAzul
		li $a3, 7 
		jal DrawHorizontalLine
		
		li $a1, 15  
		jal DrawHorizontalLine
		
		li $a0, 4 
		li $a1, 14 
		lw $a2, ColorAzul
		li $a3, 6 
		jal DrawHorizontalLine
		
		li $a0, 36
		li $a1, 13
		lw $a2, ColorAzul
		jal DrawPoint
	
		li $a0, 36
		li $a1, 14
		jal DrawPoint
#N
		li $a0, 9 
		li $a1, 13 
		lw $a2, ColorAzul
		li $a3, 12 
		jal DrawHorizontalLine	
		
		li $a0, 41
		li $a1, 13
		lw $a2, ColorAzul
		jal DrawPoint
	
		li $a0, 44
		li $a1, 13
		jal DrawPoint
		
		li $a0, 9
		li $a1, 14
		jal DrawPoint
		
		li $a0, 12
		li $a1, 14
		jal DrawPoint
		
		li $a0, 41
		li $a1, 14
		jal DrawPoint
	
		li $a0, 44
		li $a1, 14
		jal DrawPoint
		
		li $a0, 9
		li $a1, 15
		jal DrawPoint
		
		li $a0, 12
		li $a1, 15
		jal DrawPoint
		
#T
		li $a0, 14 
		li $a1, 13 
		lw $a2, ColorAzul
		li $a3, 16 
		jal DrawHorizontalLine
		
		li $a0, 47
		li $a1, 13
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a1, 14 
		jal DrawPoint
		
		li $a0, 15
		li $a1, 14
		jal DrawPoint
		
		li $a1, 15
		jal DrawPoint
		
#E
		li $a0, 18 
		li $a1, 13 
		lw $a2, ColorAzul
		li $a3, 21 
		jal DrawHorizontalLine
		
		li $a1, 15  
		jal DrawHorizontalLine
		
		li $a0, 18 
		li $a1, 14 
		lw $a2, ColorAzul
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 50
		li $a1, 13
		lw $a2, ColorAzul
		jal DrawPoint
	
		li $a0, 50
		li $a1, 14
		jal DrawPoint
		
#R
		li $a0, 23 
		li $a1, 13 
		lw $a2, ColorAzul
		li $a3, 25 
		jal DrawHorizontalLine
		
		li $a0, 23 
		li $a1, 14 
		li $a3, 26 
		jal DrawHorizontalLine
		
		li $a0, 55
		li $a1, 13
		lw $a2, ColorAzul
		jal DrawPoint
	
		li $a0, 57
		li $a1, 13
		jal DrawPoint
		
		li $a0, 55
		li $a1, 14
		jal DrawPoint
		
		li $a0, 58
		jal DrawPoint
		
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		
		li $a0, 26
		jal DrawPoint
		
###Loop					#Tiempo de espera	
		li $a0, 500 
		li $v0, 32		#Pausa durante medio segundo (500 ms)
		syscall		
		
#E					#Despintar la palabra ENTER
		li $a0, 4 
		li $a1, 13 
		lw $a2, ColorNegro
		li $a3, 7 
		jal DrawHorizontalLine
		
		li $a1, 15  
		jal DrawHorizontalLine
		
		li $a0, 4 
		li $a1, 14 
		lw $a2, ColorNegro
		li $a3, 6 
		jal DrawHorizontalLine
		
		li $a0, 36
		li $a1, 13
		lw $a2, ColorNegro
		jal DrawPoint
	
		li $a0, 36
		li $a1, 14
		jal DrawPoint
#N
		li $a0, 9 
		li $a1, 13 
		lw $a2, ColorNegro
		li $a3, 12 
		jal DrawHorizontalLine	
		
		li $a0, 41
		li $a1, 13
		lw $a2, ColorNegro
		jal DrawPoint
	
		li $a0, 44
		li $a1, 13
		jal DrawPoint
		
		li $a0, 9
		li $a1, 14
		jal DrawPoint
		
		li $a0, 12
		li $a1, 14
		jal DrawPoint
		
		li $a0, 41
		li $a1, 14
		jal DrawPoint
	
		li $a0, 44
		li $a1, 14
		jal DrawPoint
		
		li $a0, 9
		li $a1, 15
		jal DrawPoint
		
		li $a0, 12
		li $a1, 15
		jal DrawPoint
		
#T
		li $a0, 14 
		li $a1, 13 
		lw $a2, ColorNegro
		li $a3, 16 
		jal DrawHorizontalLine
		
		li $a0, 47
		li $a1, 13
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a1, 14 
		jal DrawPoint
		
		li $a0, 15
		li $a1, 14
		jal DrawPoint
		
		li $a1, 15
		jal DrawPoint
		
#E
		li $a0, 18 
		li $a1, 13 
		lw $a2, ColorNegro
		li $a3, 21 
		jal DrawHorizontalLine
		
		li $a1, 15  
		jal DrawHorizontalLine
		
		li $a0, 18 
		li $a1, 14 
		lw $a2, ColorNegro
		li $a3, 20
		jal DrawHorizontalLine
		
		li $a0, 50
		li $a1, 13
		lw $a2, ColorNegro
		jal DrawPoint
	
		li $a0, 50
		li $a1, 14
		jal DrawPoint
		
#R
		li $a0, 23 
		li $a1, 13 
		lw $a2, ColorNegro
		li $a3, 25 
		jal DrawHorizontalLine
		
		li $a0, 23 
		li $a1, 14 
		li $a3, 26 
		jal DrawHorizontalLine
				
		li $a0, 55
		li $a1, 13
		lw $a2, ColorNegro
		jal DrawPoint
	
		li $a0, 57
		li $a1, 13
		jal DrawPoint
		
		li $a0, 55
		li $a1, 14
		jal DrawPoint
		
		li $a0, 58
		jal DrawPoint
		
		li $a0, 23
		li $a1, 15
		jal DrawPoint
		
		li $a0, 26
		jal DrawPoint
			
		# Metodo que espara que se precione alguna tecla para iniciar el juego
		#Se llama a la funcion Sleep hasta que se presione cualquier tecla
		
		jal Sleep			
		nop
		lw $t0, 0xFFFF0000	#Codigo de tecla presionada			
			
		###Loop
		li $a0,  500
		li $v0, 32	# Pausa por 500 ms
		syscall	
		
		blez $t0, Espera	# Revisa si se presiono alguna tecla
		nop
###########################################################################################################

# $s0 Guarda la direccion de la nave
# $s2 Guarda el contador de la velocidad de la nave en X
# $s3 Guarda la posicion inicial enemigo1 x
# $s4 Guarda la posicion inicial de la nave
# $t4 Guarda la posicion inicial enemigo1 y
# $t5 Guarda la posicion inicial enemigo2 x
# $t6 Guarda la posicion inicial enemigo2 y
# $t7 Guarda la posicion inicial enemigo3 x
# $t8 Guarda la posicion inicial enemigo3 y


Inicializacion:
				
		li $s0, 0 	# 0x01000000 Arriba; 0x02000000 Abajo; 0 Se mantiene quieta
		lw $s2, xDir	# Espera para mover en 1 posicion en la coordenada x
		li $s3, 30	#Posicion inicial enemigo1 x
		li $s4, 8	#Posicion inicial de la nave
		li $t4, 3	#Posicion inicial enemigo1 y
		li $t5, 30	#Posicion inicial enemigo2 x
		li $t6, 8	#Posicion inicial enemigo2 y
		li $t7, 30	#Posicion inicial enemigo3 x
		li $t8, 15	#Posicion inicial enemigo3 y
		
		jal ClearBoard

					#Preparacion de la arena 
VerticalIZQ:
		li $a0, 0
		li $a1, 3
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a1, 4
		jal DrawPoint
		
		li $a1, 5
		jal DrawPoint 
		
		li $a1, 6
		jal DrawPoint
		
		li $a1, 7
		jal DrawPoint
		
		li $a1, 8
		jal DrawPoint
		
		li $a1, 9
		jal DrawPoint
		
		li $a1, 10
		jal DrawPoint
		
		li $a1, 11
		jal DrawPoint
		
		li $a1, 12
		jal DrawPoint
		
		li $a1, 13
		jal DrawPoint
		
		li $a1, 14
		jal DrawPoint
		
		li $a1, 15
		jal DrawPoint
		
		li $a0, 32
		li $a1, 3
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a1, 4
		jal DrawPoint
		
		li $a1, 5
		jal DrawPoint 
		
		li $a1, 6
		jal DrawPoint
		
		li $a1, 7
		jal DrawPoint
		
		li $a1, 8
		jal DrawPoint
		
		li $a1, 9
		jal DrawPoint
		
		li $a1, 10
		jal DrawPoint
		
		li $a1, 11
		jal DrawPoint
		
		li $a1, 12
		jal DrawPoint
		
		li $a1, 13
		jal DrawPoint
		
		li $a1, 14
		jal DrawPoint
		
		li $a1, 15
		jal DrawPoint
VerticalDer:
		li $a0, 31
		li $a1, 3
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a1, 4
		jal DrawPoint
		
		li $a1, 5
		jal DrawPoint 
		
		li $a1, 6
		jal DrawPoint
		
		li $a1, 7
		jal DrawPoint
		
		li $a1, 8
		jal DrawPoint
		
		li $a1, 9
		jal DrawPoint
		
		li $a1, 10
		jal DrawPoint
		
		li $a1, 11
		jal DrawPoint
		
		li $a1, 12
		jal DrawPoint
		
		li $a1, 13
		jal DrawPoint
		
		li $a1, 14
		jal DrawPoint
		
		li $a1, 15
		jal DrawPoint
		
		li $a0, 63
		li $a1, 3
		lw $a2, ColorAzul
		jal DrawPoint
		
		li $a1, 4
		jal DrawPoint
		
		li $a1, 5
		jal DrawPoint 
		
		li $a1, 6
		jal DrawPoint
		
		li $a1, 7
		jal DrawPoint
		
		li $a1, 8
		jal DrawPoint
		
		li $a1, 9
		jal DrawPoint
		
		li $a1, 10
		jal DrawPoint
		
		li $a1, 11
		jal DrawPoint
		
		li $a1, 12
		jal DrawPoint
		
		li $a1, 13
		jal DrawPoint
		
		li $a1, 14
		jal DrawPoint
		
		li $a1, 15
		jal DrawPoint
		
Horizontal:
		li $a0, 32 
		li $a1, 2
		lw $a2, ColorAzul
		li $a3, 63 
		jal DrawHorizontalLine
		 
		li $a1, 15
		jal DrawHorizontalLine
		

	
		li $a1, 15
		jal DrawHorizontalLine	
		lw $a2, VidasNave
		li $a3, 1
		jal MarcadorVidas
				
		li $a0, 1
		move $a1, $s4
		lw $a2, ColorNave
		jal Nave
		
		li $a0, 1000	#
		li $v0, 32	# Pausa por 1 segundo
		syscall		#
		
###########################################################################################################	

#Metodo principal donde se llama a los metodos de verificacion de colisiones y de movimiento de enemigos y de la nave 

Main:

		move $a0, $s3
		move $a1, $t4
		jal Colision1	#Verifica si hay colision del enemigo 1 con le borde de la izquierda o la nave
		jal Enemigo1	#Realiza el movimiento del enemigo 1
		
		li $a0, 100	#
		li $v0, 32	# Pausa por 100 milisegundos
		syscall		#
		
		move $a0, $t5
		move $a1, $t6
		jal Colision2	#Verifica si hay colision del enemigo 2 con le borde de la izquierda o la nave
		jal Enemigo2	#Realiza el movimiento del enemigo 2
		
		li $a0, 200 	#
		li $v0, 32	#Pausa por 200 milisegundos
		syscall		#

		
		move $a0, $t7	#Verifica si hay colision del enemigo 3 con le borde de la izquierda o la nave
		move $a1, $t8	#Realiza el movimiento del enemigo 3
		jal Colision3
		jal Enemigo3
		
		li $a0, 1
		move $a1, $s4
		lw $a2, ColorNave
		move $a3, $s0
		jal Nave
		move $s4, $a1	# a1 Tiene la nueva posicion superior guardada
		move $s0, $a3	# a3 Tiene la nueva direccion guardada si golpea en un borde 
		
		
# Espera y lee los botones presionados 
Begin_standby:	
		li $t0, 0x00000001	# Carga 25 en el contador para que espere 50 milisegundos al Standby
	
Standby:
		blez $t0, EndStandby
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		addi $t0, $t0, -1 		# Decrementa el contador
		
		lw $t1, 0xFFFF0000		# Revisa si se presiono alguna tecla
		blez $t1, Standby
				
		jal AdjustDir			# Chequea cual tecla fue presionada
		sw $zero, 0xFFFF0000		# Borra el bit de tecla presionada
		j Standby
EndStandby:		
		j Main
###########################################################################################################
		
# $a0 Posicion en X de la Nave
# $a1 Posicion en Y de la Nave
# $a2 Contiene el color de la Nave
# $a3 Contiene la direccion de la Nave
# $t0 Es el contador de Loop
# $t1 Es la coordenada actual de y, la coordenada en x no cambia
# Despues de cumplido $a1 guarda la nueva posicion en y, y $a3 retorna la direccion
# Tener la precaucion de no cambiar los registros $a aca

Nave:
	# Chequea la direccion y dibuja un punto en el lado correcto mientras que elimina el punto anterior
	
	
	#Metodo de disparo
	Bala:
		bne $a3, 0x03000000, Arriba
#######################################	
		li $a0, 2
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 2
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# arguments on stack
   		sw $a1, 4($sp)
		
		li $a0, 80		# Make the sound when the ball hits the paddle
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
   		lw $a0, 0($sp)   	# Puts arguments back in their registers for later use
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
   		
   		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 3
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 3
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 4
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 4
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 5
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 5
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 6
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 6
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 7
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 7
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 8
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 8
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 9
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 9
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 10
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 10
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 11
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 11
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 12
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 12
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 13
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 13
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 14
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 14
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 15
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 15
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 16
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 16
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 17
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 17
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 18
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 18
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 19
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 19
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 20
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 20
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 21
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 21
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 22
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 22
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 23
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 23
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 24
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 24
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 25
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 25
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 26
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 26
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 27
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 27
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 28
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 28
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 29
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 29
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 30
		li $a1, 3
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 30
		li $a1, 3
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#########################################
#########################################	
		li $a0, 2
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 2
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 3
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 3
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 4
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 4
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 5
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 5
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 6
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 6
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 7
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 7
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 8
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 8
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 9
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 9
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 10
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 10
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 11
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 11
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 12
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 12
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 13
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 13
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 14
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 14
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 15
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 15
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 16
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 16
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 17
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 17
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 18
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 18
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 19
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 19
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 20
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 20
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 21
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 21
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 22
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 22
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 23
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 23
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 24
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 24
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 25
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 25
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 26
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 26
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 27
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 27
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 28
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 28
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 29
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 29
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 30
		li $a1, 8
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 30
		li $a1, 8
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#########################################
#########################################	
		li $a0, 2
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 2
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 3
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 3
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 4
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 4
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 5
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 5
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 6
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 6
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 7
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 7
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 8
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 8
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 9
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 9
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 10
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 10
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 11
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 11
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 12
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 12
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 13
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 13
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 14
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 14
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 15
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 15
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 16
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 16
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 17
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 17
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 18
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 18
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 19
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 19
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 20
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 20
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 21
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 21
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 22
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 22
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 23
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 23
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 24
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 24
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 25
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 25
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 26
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 26
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 27
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 27
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################			
		li $a0, 28
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 28
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#######################################	
		li $a0, 29
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 29
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
########################################		
		li $a0, 30
		li $a1, 15
		lw $a2, ColorBala
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 30
		li $a1, 15
		lw $a2, ColorNegro
		jal DrawPoint
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
#########################################
#########################################
#########################################

		
		j Win
		
	Arriba:
		bne $a3, 0x01000000, Abajo
		# Elimina el punto de abajo anterior
   		move $t2, $a2
   		move $t1, $a1
   		addi $a1, $a1, 0	#  El punto de abajo 
		lw $a2, ColorNegro
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# Guarda $ra en el stack
		jal DrawPoint
		lw $ra, 0($sp)		# Lo regresa
   		addi $sp, $sp, 4	# Vuelve a cambiar el stack de nuevo
   		move $a1, $t1		# Pone la posicion superior en y
   		move $a2, $t2		# Vuelve a poner el color
   		
		# Mueve hacia arriba siempre y cuando no sea el borde superior
		beq $a1, 3, NoMove	#Hasta que punto se mueve arriba
		addi $a1, $a1, -1
		j Move
		
	Abajo:
		bne $a3, 0x02000000, NoMove
		# Elimina el punto de arriba anterior
		move $t1, $a2
		lw $a2, ColorNegro
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# Guarda $ra en el stack
		jal DrawPoint
		lw $ra, 0($sp)		# Lo regresa
   		addi $sp, $sp, 4	# Vuelve a cambiar el stack de nuevo
   		move $a2, $t1		# Vuelve a poner el color
   		
		# Mueve hacia abajo siempre y cuando no sea el borde inferior
		beq $a1, 15, NoMove	# Hasta donde se mueve abajo
		addi $a1, $a1, 1
		j Move
	NoMove:
		# No realiza una accion y verifica que no se haya presionado alguna tecla
		li $a3, 0
	
	Move:				#Mueve en una posicion
		li $t0, 1
	StartPLoop:
		subi $t0, $t0, 1
		addu $t1, $a1, $t0
		
		# Convierte a la direccion de memoria
		sll $t1, $t1, 6   # Multiplica la coordenada en y por 64 (largo del campo)
		addu $v0, $a0, $t1
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		
		sw $a2, ($v0)
		beqz $t0, EndPLoop
		j StartPLoop
	EndPLoop:		
		jr $ra

###########################################################################################################

# $a2 Contiene las vidas del jugador
# $a3 contiene la columna mas a la izquierda del punto de vidas 
# Usando esta informacion, se dibuja en la parte superior de la pantalla la cantidad de vidas perdidas del jugador.
	
MarcadorVidas:
		addi $sp, $sp, -12	# Guarda los valores del registro en la cola
   		sw $ra, 0($sp)
   		sw $s2, 4($sp)
   		sw $a2, 8($sp)
   		
   		move $s2, $a2
   		lw $a2, ColorNave
   		ble $s2, 5, FilaMarcadorVidas
   		
	FilaMarcadorVidas:			#Dibuja el marcador de la primera ronda
		beq $s2, $zero, MarcadorVidasFinal
		sub $t1, $s2, 1
		sll $t1, $t1, 1
   		add $a0, $t1, $a3
   		li $a1, 1
   		jal DrawPoint
   		
   		addi $s2, $s2, -1
   		
   		j FilaMarcadorVidas
	
	MarcadorVidasFinal:
		lw $ra, 0($sp)		# Limpia el Stack
		lw $s2, 4($sp)
		lw $a2, 8($sp)
   		addi $sp, $sp, 12
		
		jr $ra
		
###########################################################################################################
			
Sleep:
			ori $v0, $zero, 32		
			ori $a0, $zero, 60		
							
			syscall
			jr $ra				
			nop
			
###########################################################################################################
		
Enemigo1:		
							#Dibuja sobre el ultimo punto
		lw $a2, ColorNegro
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# Guarda $ra en el stack
		jal DrawPoint
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4	 
   		
   		add $s3, $s3, $s2	# Suma la velocidad de x en la coordenada x
		move $a0, $s3
		move $a1, $t4
		lw $a2, ColorEnemigos
		
		sll $t0, $a1, 6   # Multiplica la cordenada en Y  x64(Largo del campo)
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		
		
		jr $ra
##########################

											# $a0 Contiene la posicion en x
											# $a1 Contiene la posicion en y
Enemigo2:		
					# Dibuja sobre el ultimo punto
		lw $a2, ColorNegro
		addi $sp, $sp, -4
  		sw $ra, 0($sp)   	
		jal DrawPoint
		lw $ra, 0($sp)		
  		addi $sp, $sp, 4	
  		
 		add $t5, $t5, $s2	# Suma la velocidad de x en la coordenada x
		move $a0, $t5
		move $a1, $t6
		lw $a2, ColorEnemigos	
		
		sll $t0, $a1, 6   # Multiplica la cordenada en Y  x64(Largo del campo)
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		
		
		jr $ra

##########################

# $a0 Contiene la posicion en x
# $a1 Contiene la posicion en y
Enemigo3:		
		# draw over the last point
		lw $a2, ColorNegro
		addi $sp, $sp, -4
   		sw $ra, 0($sp)   	# Guarda $ra en el stack
		jal DrawPoint
		lw $ra, 0($sp)		# Lo regresa
  		addi $sp, $sp, 4	# Vuelve a cambiar el stack de muevo
   		
   		add $t7, $t7, $s2	# Añade la velocidad x en la coordenada x
		move $a0, $t7
		move $a1, $t8
		lw $a2, ColorEnemigos	
###########################################################################################################

# $a0 Contiene la posicion en x, $a1 contiene la posicion en y, $a2 contiene el color 
DrawPoint:
		sll $t0, $a1, 6   # Multiplica la cordenada en Y  x64(Largo del campo)
		addu $v0, $a0, $t0
		sll $v0, $v0, 2
		addu $v0, $v0, $gp
		sw $a2, ($v0)		# Dibuja el color en la posicion
		
		jr $ra
		
###########################################################################################################
		
# $a0 la coordenada inicial en x
# $a1 la cordenada en y
# $a2 el color
# $a3 la coordenada final en x
DrawHorizontalLine:
		
		addi $sp, $sp, -4
   		sw $ra, 0($sp)
		
		sub  $t9, $a3, $a0
		move $t1, $a0
		
	HorizontalLoop:
		
		add $a0, $t1, $t9
		jal DrawPoint
		addi $t9, $t9, -1
		
		bge $t9, 0, HorizontalLoop
		
		lw $ra, 0($sp)		
   		addi $sp, $sp, 4

		jr $ra

		
###########################################################################################################

# AdjustDir  cambia los registros de direccion de la nave dependiedo de la tecla presionada
AdjustDir: 
		lw $a0, 0xFFFF0004		# Carga boton presionado
		
AdjustDir_Arriba:
		bne $a0, 97, AdjustDir_Abajo  # A
		li $s0, 0x01000000	# Arriba
		j AdjustDir_Listo		

AdjustDir_Abajo:
		bne $a0, 122, Disparo	# Z
		li $s0, 0x02000000	# Abajo
		j AdjustDir_Listo
		
Disparo:
		bne $a0, 32, AdjustDir_No # SPACE
		li $s0, 0x03000000	
		j AdjustDir_Listo

AdjustDir_No:
						# No hace nada y pasa a Listo
AdjustDir_Listo:
		jr $ra				# Regresa

###########################################################################################################

# Chequea la colision y procede segun lo acontecido
# $a0 contiene la posicion en x del enemigo y $a1 continene la posicion en y
# Chequea primero si es una colision valida
# Luego chequea se presento otra colision
Colision1:
		beq $s3, 1, PerdidaVida
		bne $s3, 2, NoColisionNave	# Revisa si es una colision en la parte izquerda
ColisionIzq:
		blt $t4, $s4, NoColisionNave	# Si es sobre la nave
		addi $t3, $s4, 0		# Calcula la posicion de la nave
		bgt $t4, $t3, NoColisionNave	# Si es bajo la nave
		sub $t3, $t4, $s4		# Guarda la direccion donde colisiono
		li $s2, 1			
		j ColisionNave
   		
NoColisionNave:
		j Choque
		
ColisionNave: 
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# Argumentos en el stack
   		sw $a1, 4($sp)
		
		li $a0, 80		# Sonido si choca contra la nave
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
   		lw $a0, 0($sp)   	# Pone los argumentos de nuevo en los registros para usarlos luego
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
		
		beq $t3, 0, PerdidaVida
		
Choque:
		beq $t4, 31, ChoqueHorizontal
		bne $t4, 0, NoCollision
		
ChoqueHorizontal: 
		# Sonido
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# Argumentos en el stack
   		sw $a1, 4($sp)
		
   		lw $a0, 0($sp)   	# Pone los argumentos de nuevo en los registros para usarlos luego
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
   		
NoCollision:				#No colisiono con nada vuelve 
		jr $ra
		
###########################################################################################################

# Chequea la colision y procede segun lo acontecido
# $a0 contiene la posicion en x del enemigo y $a1 continene la posicion en y
# Chequea primero si es una colision valida
# Luego chequea se presento otra colision
Colision2:
		beq $t5, 1, PerdidaVida
		bne $t5, 2, NoColisionNave2	# Revisa si es una colision en la parte izquerda
ColisionIzq2:
		blt $t6, $s4, NoColisionNave2	# Si es sobre la nave
		addi $t3, $s4, 0		# Calcula la posicion de la nave
		bgt $t6, $t3, NoColisionNave2	# Si es bajo la nave
		sub $t3, $t6, $s4		# Guarda la direccion donde colisiono
		li $s2, 1			 
		j ColisionNave2
   		
NoColisionNave2:
		j Choque2
		
ColisionNave2: 
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# Argumentos en el stack
   		sw $a1, 4($sp)
		
		li $a0, 80		# Sonido si choca contra la nave
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
   		lw $a0, 0($sp)   	# Pone los argumentos de nuevo en los registros para usarlos luego
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
		
		beq $t3, 0, PerdidaVida
		
Choque2:
		beq $t6, 31, ChoqueHorizontal2
		bne $t6, 0, NoCollision2
		
ChoqueHorizontal2: 
		# play a sound
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# Argumentos en el stack
   		sw $a1, 4($sp)
		
   		lw $a0, 0($sp)   	# Pone los argumentos de nuevo en los registros para usarlos luego
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
   		
NoCollision2:
		jr $ra

###########################################################################################################

# Chequea la colision y procede segun lo acontecido
# $a0 contiene la posicion en x del enemigo y $a1 continene la posicion en y
# Chequea primero si es una colision valida
# Luego chequea se presento otra colision
Colision3:
		beq $t7, 1, PerdidaVida
		bne $t7, 2, NoColisionNave3	# Revisa si es una colision en la parte izquerda
ColisionIzq3:
		blt $t8, $s4, NoColisionNave3	# Si es sobre la nave
		addi $t3, $s4, 0		# Calcula la posicion de la nave
		bgt $t8, $t3, NoColisionNave3	# Si es bajo la nave
		sub $t3, $t8, $s4		# Guarda la direccion donde colisiono
		li $s2, 1			
		j ColisionNave3


NoColisionNave3:
		j Choque3
		
ColisionNave3: 
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# Argumentos en el stack
   		sw $a1, 4($sp)
		
		
		li $a0, 80		# Sonido si choca contra la nave
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
   		lw $a0, 0($sp)   	# Pone los argumentos de nuevo en los registros para usarlos luego
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
		
		beq $t3, 0, PerdidaVida
		
Choque3:
		beq $t8, 31, ChoqueHorizontal3
		bne $t8, 0, NoCollision3
		
ChoqueHorizontal3: 
		# play a sound
		addi $sp, $sp, -8
   		sw $a0, 0($sp)   	# Argumentos en el stack
   		sw $a1, 4($sp)
		
   		lw $a0, 0($sp)   	# Pone los argumentos de nuevo en los registros para usarlos luego
   		lw $a1, 4($sp)
   		addi $sp, $sp, 8
   		
NoCollision3:
		jr $ra

###########################################################################################################

# Realiza que todo el mapa de bits ponga de color de fondo el negro (resetea todo el bitmap)
ClearBoard:
		lw $t0, ColorNegro
		li $t1, 8192 # Numero de pixeles en el display
	StartCLoop:
		subi $t1, $t1, 4
		addu $t2, $t1, $gp
		sw $t0, ($t2)
		beqz $t1, EndCLoop
		j StartCLoop
	EndCLoop:
		jr $ra
		

PerdidaVida:	
		# Incrementa en 1 la perdida de vida del jugador
		lw $t1, VidasNave
		addi $t1, $t1, 1
		sw $t1, VidasNave
		
		#Prepara la siguiente ronda
		li $t2, -1
		sw $t2, xDir
		
		li $a3, 1
		sw $zero, 0xFFFF0004 	# Pone en cero la tecla presionada
		beq $t1, 4, EndGame	#Si igual a 4 tiene tres vidas el jugador, gana enemigo

PlayPointSound:
		# Sonido
		li $a0, 80		# Cuando el enemigo choca contra el lado izquerdo
		li $a1, 300
		li $a2, 121
		li $a3, 127
		li $v0, 31
		syscall
   		
   		j Inicializacion

###########################################################################################################
Win:
	jal ClearBoard
	
	#Sonido del Win
		li $a0, 80		
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 80		
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 80		
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
		li $a0, 60	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 80		
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
				
		#W
		li $a0, 34 		#Coordenada X inicial
		li $a1, 7		#Coordenada Y
		lw $a2, ColorEnemigos 	#El Color
		li $a3, 35 		#Coordenada X final
		jal DrawHorizontalLine
		
		li $a0, 39
		li $a3, 40 		
		jal DrawHorizontalLine
		
		li $a0, 2 		
		li $a1, 8			
		li $a3, 3 		
		jal DrawHorizontalLine
		
		li $a0, 7 					
		li $a3, 8 		
		jal DrawHorizontalLine
			
		li $a0, 2		
		li $a1, 5		
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 34		
		li $a1, 5		
		jal DrawPoint
		
		li $a0, 2		
		li $a1, 6		
		jal DrawPoint
		
		li $a0, 34		
		li $a1, 6		
		jal DrawPoint
		
		li $a0, 2		
		li $a1, 7		
		jal DrawPoint
		
		li $a0, 37		
		li $a1, 6		
		jal DrawPoint
		
		li $a0, 4		
		li $a1, 7		
		jal DrawPoint
		
		li $a0, 6				
		jal DrawPoint
		
		li $a0, 8		
		li $a1, 5		
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 40		
		li $a1, 5		
		jal DrawPoint
		
		li $a0, 8		
		li $a1, 6		
		jal DrawPoint
		
		li $a0, 40		
		li $a1, 6		
		jal DrawPoint
		
		li $a0, 8		
		li $a1, 7		
		jal DrawPoint
		
#I
		li $a0, 10 		#Coordenada X inicial
		li $a1, 5		#Coordenada Y
		lw $a2, ColorEnemigos 	#El Color
		li $a3, 16 		#Coordenada X final
		jal DrawHorizontalLine
		
		li $a1, 8				
		jal DrawHorizontalLine
		
		li $a0, 45		
		li $a1, 5		
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 13		
		li $a1, 6		
		jal DrawPoint	
		
		li $a0, 45			
		jal DrawPoint	
		
		li $a0, 13		
		li $a1, 7		
		jal DrawPoint	
		
		li $a0, 45			
		jal DrawPoint	

#N	
		li $a0, 18 		#Coordenada X inicial
		li $a1, 5		#Coordenada Y
		lw $a2, ColorEnemigos 	#El Color
		li $a3, 23 		#Coordenada X final
		jal DrawHorizontalLine
		
		li $a0, 50		
		li $a1, 5		
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 18		
		li $a1, 6		
		jal DrawPoint
		
		li $a0, 50				
		jal DrawPoint
		
		li $a0, 18		
		li $a1, 7		
		jal DrawPoint
		
		li $a0, 50				
		jal DrawPoint
		
		li $a0, 18		
		li $a1, 8		
		jal DrawPoint
		
		li $a0, 55		
		li $a1, 5		
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 23		
		li $a1, 6		
		jal DrawPoint
		
		li $a0, 55				
		jal DrawPoint
		
		li $a0, 23		
		li $a1, 7		
		jal DrawPoint
		
		li $a0, 55				
		jal DrawPoint
		
		li $a0, 23		
		li $a1, 8		
		jal DrawPoint
	
#!!
		li $a0, 25 		#Coordenada X inicial
		li $a1, 5		#Coordenada Y
		lw $a2, ColorEnemigos 	#El Color
		li $a3, 26 		#Coordenada X final
		jal DrawHorizontalLine
		
		li $a0, 57 					
		li $a3, 58 		
		jal DrawHorizontalLine
		
		li $a0, 28 					
		li $a3, 29		
		jal DrawHorizontalLine
		
		li $a0, 60 					
		li $a3, 61 		
		jal DrawHorizontalLine
		
		li $a0, 25 		#Coordenada X inicial
		li $a1, 6		#Coordenada Y
		lw $a2, ColorEnemigos 	#El Color
		li $a3, 26 		#Coordenada X final
		jal DrawHorizontalLine
		
		li $a0, 57 					
		li $a3, 58 		
		jal DrawHorizontalLine
		
		li $a0, 28 					
		li $a3, 29		
		jal DrawHorizontalLine
		
		li $a0, 60 					
		li $a3, 61 		
		jal DrawHorizontalLine
		
		li $a0, 57 
		li $a1, 7					
		li $a3, 58 		
		jal DrawHorizontalLine
		
		li $a0, 60					
		li $a3, 61 		
		jal DrawHorizontalLine
		
		li $a0, 25 
		li $a1, 8					
		li $a3, 26		
		jal DrawHorizontalLine
		
		li $a0, 28					
		li $a3, 29		
		jal DrawHorizontalLine	
		
		sw $zero, 0xFFFF0000
		
		li $a0, 1000	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 1000	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 1000	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		j Reset					
															
# Termina el juego
EndGame:
		jal ClearBoard
		
		#Sonido del Game Over
		li $a0, 80		
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
		li $a0, 100	#
		li $v0, 32	# Pausa por 60 milisegundos
		syscall		#
		
		li $a0, 80		
		li $a1, 80
		li $a2, 32
		li $a3, 127
		li $v0, 31
		syscall
		
		lw $t0, VidasNave
		bne $t0, 4, GameOver	#Si igual a 4 tiene tres vidas el jugador, gana enemigo
		
		
	GameOver:	
#G
		li $a0, 5 		#Coordenada X inicial
		li $a1, 4		#Coordenada Y
		lw $a2, ColorEnemigos 	#El Color
		li $a3, 8 		#Coordenada X final
		jal DrawHorizontalLine
		
		li $a1, 5
		jal DrawHorizontalLine
		
		li $a1, 6
		jal DrawHorizontalLine
	
		li $a0, 37		#Coordenada X 
		li $a1, 4		#Coordenada Y
		lw $a2, ColorEnemigos 	#El Color
		jal DrawPoint
		
				
		li $a1, 5		 	
		jal DrawPoint
		
		li $a0, 40		 	
		jal DrawPoint
		
		
		
#A
		li $a0, 10 
		li $a1, 4 
		lw $a2, ColorEnemigos
		li $a3, 13 
		jal DrawHorizontalLine
		
		li $a1, 5  
		jal DrawHorizontalLine
		
		li $a0, 42
		li $a1, 4
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 45
		jal DrawPoint
		
		li $a0, 42
		li $a1, 5
		jal DrawPoint
		
		li $a0, 45
		jal DrawPoint
		
		li $a0, 10
		li $a1, 6
		jal DrawPoint
		
		li $a0, 13
		jal DrawPoint
#M

		li $a0, 47 
		li $a1, 4 
		lw $a2, ColorEnemigos
		li $a3, 48 
		jal DrawHorizontalLine
		
		li $a0, 50
		li $a3, 51 
		jal DrawHorizontalLine
		
		li $a0, 15
		li $a1, 4
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 19
		jal DrawPoint
		
		li $a0, 15
		li $a1, 5
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 17
		jal DrawPoint
		
		li $a0, 19
		jal DrawPoint
		
		li $a0, 47
		li $a1, 5
		jal DrawPoint
		
		li $a0, 51
		jal DrawPoint
		
		li $a0, 15
		li $a1, 6
		jal DrawPoint
		
		li $a0, 19
		jal DrawPoint

#E
		li $a0, 21 
		li $a1, 4 
		lw $a2, ColorEnemigos
		li $a3, 24 
		jal DrawHorizontalLine
		
		li $a1, 6  
		jal DrawHorizontalLine
		
		li $a0, 21 
		li $a1, 5 
		lw $a2, ColorEnemigos
		li $a3, 23 
		jal DrawHorizontalLine
		
		li $a0, 53
		li $a1, 4
		lw $a2, ColorEnemigos
		jal DrawPoint

		li $a1, 5
		jal DrawPoint



#O
		li $a0, 6 
		li $a1, 8 
		lw $a2, ColorEnemigos
		li $a3, 9 
		jal DrawHorizontalLine
		
		li $a1, 10  
		jal DrawHorizontalLine
		
		li $a0, 38
		li $a1, 8
		lw $a2, ColorEnemigos
		jal DrawPoint

		li $a0, 41
		jal DrawPoint
		
		li $a0, 6
		li $a1, 9
		lw $a2, ColorEnemigos
		jal DrawPoint

		li $a0, 9
		jal DrawPoint
		
		li $a0, 38
		li $a1, 9
		lw $a2, ColorEnemigos
		jal DrawPoint

		li $a0, 41
		jal DrawPoint
		
		
#V
		li $a0, 12 
		li $a1, 10 
		lw $a2, ColorEnemigos
		li $a3, 13 
		jal DrawHorizontalLine
		
		li $a0, 11
		li $a1, 8
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 14
		jal DrawPoint
		
		li $a0, 43
		li $a1, 8
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 46
		jal DrawPoint
		
		li $a0, 11
		li $a1, 9
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 14
		jal DrawPoint
		
		li $a0, 43
		li $a1, 9
		lw $a2, ColorEnemigos
		jal DrawPoint
		
		li $a0, 46
		jal DrawPoint
		
#E
		li $a0, 16 
		li $a1, 8 
		lw $a2, ColorEnemigos
		li $a3, 19 
		jal DrawHorizontalLine
		
		li $a1, 10  
		jal DrawHorizontalLine
		
		li $a0, 16 
		li $a1, 9 
		lw $a2, ColorEnemigos
		li $a3, 18 
		jal DrawHorizontalLine
		
		li $a0, 48
		li $a1, 8
		lw $a2, ColorEnemigos
		jal DrawPoint

		li $a1, 9
		jal DrawPoint

#R		
		li $a0, 21 
		li $a1, 8 
		lw $a2, ColorEnemigos
		li $a3, 23 
		jal DrawHorizontalLine
		
		li $a0, 21 
		li $a1, 9 
		lw $a2, ColorEnemigos
		li $a3, 24 
		jal DrawHorizontalLine
		
		li $a0, 53
		li $a1, 8
		lw $a2, ColorEnemigos
		jal DrawPoint

		li $a0, 55
		jal DrawPoint
	
		li $a0, 53
		li $a1, 9
		jal DrawPoint

		li $a0, 56
		jal DrawPoint
		
		li $a0, 21
		li $a1, 10
		jal DrawPoint

		li $a0, 24
		jal DrawPoint
		
		li $a0, 100 	#
		li $v0, 32	# Pausa por 100 milisegundos
		syscall		#
		
		sw $zero, 0xFFFF0000
		
		li $a0, 1000 	#
		li $v0, 32	# Pausa por 100 milisegundos
		syscall		#
	
		li $a0, 1000 	#
		li $v0, 32	# Pausa por 100 milisegundos
		syscall		#
		
		li $a0, 1000 	#
		li $v0, 32	# Pausa por 100 milisegundos
		syscall		#
		
		li $a0, 1000 	#
		li $v0, 32	# Pausa por 100 milisegundos
		syscall		#
		
		li $a0, 1000 	#
		li $v0, 32	# Pausa por 100 milisegundos
		syscall		#
###########################################################################################################
						
Reset:		
		sw $zero, VidasNave
		sw $zero, 0xFFFF0000	# Pone en cero la tecla presionada
		sw $zero, 0xFFFF0004
		
		jal ClearBoard
		j JuegoNuevo
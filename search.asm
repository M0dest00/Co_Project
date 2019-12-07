		.text
	searchFunction:
	#will initalize the t3 to the Front1 which we assumed to be in t2
	#the siz variable in c will be in t0
	#the size of the current queue is in t5 -which is speciefied in C as size"queue number"
	#a0 is the queue number
	#a2 is the data the user wishes to search for
	#t4 here is just a temp value we use to decide which case to jump to, depending on the queue number that is coming from the main
		move $t3, $t2

		li $t4, 1

		S1_Cond:
			beq $a0, $t4, S1
			addi $t4, 1
			j S2_Cond

		S2_Cond:
			beq $a0, $t4, S2
			addi $t4, 1
			j S3_Cond

		S3_Cond:
			beq $a0, $t4, S3
			addi $t4, 1
			j S4_Cond

		S4_Cond:
			beq $a0, $t4, S4
			addi $t4, 1
			j S5_Cond
		S5_Cond:
			beq $a0, $t4, S5
			j garen
		#t4 now is the MAX of all queues
		li $t4, 5


		S1:
			partA:  # Implement a do-while loop (0-size)
				add $t0, $zero, $zero # siz=0
			Astart: # Get offset to current int
				sll $t1, $t3, 2  # *4
				add $t1, $s0, $t1
				lw $t7, ($t1)
				beq $t7, $a2, Adone
				add $t0, $t0, 1  # siz++
				addi $t3, $t3, 1
				rem $t3, $t3, $t4
				blt $t0, $t5, Astart # siz < size of the queue
				addi $v1, $zero, -1
				j garen
			Adone:
				add $v1, $t1, $zero # terminate program
				j garen

		S2:
			partB:  # Implement a do-while loop (0-size)
				add $t0, $zero, $zero # siz=0
			Bstart: # Get offset to current int
				sll $t1, $t3, 2  # *4
				add $t1, $s0, $t1
				lw $t7, ($t1)
				beq $t7, $a2, Bdone
				add $t0, $t0, 1  # siz++
				addi $t3, $t3, 1
				rem $t3, $t3, $t4
				blt $t0, $t5, Bstart # siz < size of the queue
				addi $v1, $zero, -1
				j garen
			Bdone:
				add $v1, $t1, $zero # terminate program
				j garen

		S3:
			partC:  # Implement a do-while loop (0-size)
				add $t0, $zero, $zero # siz=0
			Cstart: # Get offset to current int
				sll $t1, $t3, 2  # *4
				add $t1, $s0, $t1
				lw $t7, ($t1)
				beq $t7, $a2, Cdone
				add $t0, $t0, 1  # siz++
				addi $t3, $t3, 1
				rem $t3, $t3, $t4
				blt $t0, $t5, Cstart # siz < size of the queue
				addi $v1, $zero, -1
				j garen
			Cdone:
				add $v1, $t1, $zero # terminate program
				j garen

		S4:
			partD:  # Implement a do-while loop (0-size)
				add $t0, $zero, $zero # siz=0
			Dstart: # Get offset to current int
				sll $t1, $t3, 2  # *4
				add $t1, $s0, $t1
				lw $t7, ($t1)
				beq $t7, $a2, Ddone
				add $t0, $t0, 1  # siz++
				addi $t3, $t3, 1
				rem $t3, $t3, $t4
				blt $t0, $t5, Dstart # siz < size of the queue
				addi $v1, $zero, -1
				j garen
			Ddone:
				add $v1, $t1, $zero # terminate program
				j garen
		S5:
			partE:  # Implement a do-while loop (0-size)
				add $t0, $zero, $zero # siz=0
			Estart: # Get offset to current int
				sll $t1, $t3, 2  # *4
				add $t1, $s0, $t1
				lw $t7, ($t1)
				beq $t7, $a2, Edone
				add $t0, $t0, 1  # siz++
				addi $t3, $t3, 1
				rem $t3, $t3, $t4
				blt $t0, $t5, Estart # siz < size of the queue
				addi $v1, $zero, -1
				j garen
			Edone:
				add $v1, $t1, $zero # terminate program
				j garen
		garen:


end:

.data
    input: .space 1001
    input2: .space 1001 
    prompt:.asciiz "\n"
    error:.asciiz "\nInvalid Input\n"
    output:.asciiz "\n"
    power3: .word 19683
    power2: .word 729
    power1: .word 27
   
    
    # X = 02878349
    # N = 26 + (X % 11)
    # N = 26 + (02878349 % 11)
    # N = 26 + 1
    # N = 27
    # M = N – 10
    # M = 27 - 10
    # M = 17
    

.text    
 
 main:
 	#sets select registers to zero, there will be used later
    	addi $s1, $zero, 0
    	addi $s2, $zero, 0
    	addi $t0, $zero, 0
    	
    	addi $t3, $zero, 0
    	addi $t4, $zero, 0
    	addi $t8, $zero, 0
    	
    	#print prompt
    	li $v0, 4
    	la $a0, prompt
    	syscall
    	
    	#takes 10 chars as a string
    	la $a0, input
        li $a1, 1001       
        li $v0, 8            
        syscall
    
 
fun2:   #function start 

	bge $t0, 1000, conversion #loop counter, if true jump to exit
	
	
	lb $t1, input($t0) #loads current char to reg. $t1
    
    	
    	
    	#move $v0, $t1
    	addi $t0, $t0, 1 #loop counter++
	
	
	#each base accepted in my number base is checked and added to $t2, then jumps back to fun2 label
	
	bne $t1, '0', num1 #checks if reg. $t1 equals this char (In this case char '0') is checked. if not equal check next block (in this case num1 is next)
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++	#reg. $t2 is set to its value plus reg. $t1's  equivalint Int value
	j fun2			#loop to function start if branch is true
				# code repeats format from line 55 to line 256
num1:
	bne $t1, '1', num2
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
num2:	
	bne $t1, '2', num3
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
	
num3:	
	bne $t1, '3', num4
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
	
num4:	
	bne $t1, '4', num5
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
	
num5:	
	bne $t1, '5', num6
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
num6:	
	bne $t1, '6', num7
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
num7:	
	bne $t1, '7', num8
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
	
num8:	
	bne $t1, '8', num9
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
num9:	
	bne $t1, '9', numA
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numA:	
	bne $t1, 'a', numB
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numB:	
	bne $t1, 'b', numC
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numC:	
	bne $t1, 'c', numD
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
	
numD:	
	bne $t1, 'd', numE
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numE:	
	bne $t1, 'e', numF 
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numF:	
	bne $t1, 'f', numG 
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numG:	
	bne $t1, 'g', numH 
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numH:	
	bne $t1, 'h', numI 
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numI:	
	bne $t1, 'i', numJ
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numJ:	
	bne $t1, 'j', numK
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numK:	
	bne $t1, 'k', numL
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numL:	
	bne $t1, 'l', numM 
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numM:	
	bne $t1, 'm', numN
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numN:	
	bne $t1, 'n', numO
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numO:	
	bne $t1, 'o', numP
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numP:	
	bne $t1, 'p', numQ
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
numQ:	
	bne $t1, 'q', NumA
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
	
	
NumA:	
	bne $t1, 'A', NumB
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
	
NumB:	
	bne $t1, 'B', NumC
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
	
NumC:	
	bne $t1, 'C', NumD
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumD:	
	bne $t1, 'D', NumE
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumE:	
	bne $t1, 'E', NumF
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumF:	
	bne $t1, 'F', NumG
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
NumG:	
	bne $t1, 'G', NumH
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumH:	
	bne $t1, 'H', NumI
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumI:	
	bne $t1, 'I', NumJ
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumJ:	
	bne $t1, 'J', NumK
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
NumK:	
	bne $t1, 'K', NumL
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
NumL:	
	bne $t1, 'L', NumM
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
NumM:	
	bne $t1, 'M', NumN
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
NumN:	
	bne $t1, 'N', NumO
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumO:	
	bne $t1, 'O', NumP
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2
NumP:	
	bne $t1, 'P', NumQ
	sb $t1, input2($t4) 
	addi $t4, $t4, 1 #Counter #2 ++
	j fun2
NumQ:	
	bne $t1, 'Q', invalid
	sb $t1, input2($t4)
	addi $t4, $t4, 1 #Counter #2 ++ 
	j fun2



invalid:#if branched to here an invalid char has been used
	#sets flag for invalid chars, so we know later user has inputed an ivalid char (if flag != 0 invalid char was used and output should = 0)
	addi $t3, $t3, 1 #reg. $t3 = $t3 + 1
	j fun2 #jump to function start
	

conversion:
	bge $t4, 5 , abort
	
	#loop counter, if true jump to exit
	#subi $t4, $t4, 1
		
	addi $t2, $zero, 0
	add $t7, $t4, $zero 
	sub $t7, $t7, $s2
	
	####################
	lb $t1, input2($s2)
	addi $s2, $s2, 1
	
	#   N = $t4 ,  B = 27 ($t2) , S = $t1
	
	subi $t1, $t1, 48
	 
	
	lw $t2, power3
	mult $t2, $t1
	mflo $t6
	add $t5, $t5, $t6
	
	
	###################
	lb $t1, input2($s2)
	addi $s2, $s2, 1
	subi $t1, $t1, 48
	
	lw $t2, power2
	mult $t2, $t1
	mflo $t6
	add $t5, $t5, $t6
	
	
	####################
	lb $t1, input2($s2)
	addi $s2, $s2, 1
	subi $t1, $t1, 48

	lw  $t2, power1
	mult $t2, $t1
	mflo $t6
	add $t5, $t5, $t6
	
	#################
	lb $t1, input2($s2)
	addi $s2, $s2, 1
	subi $t1, $t1, 48
	add $t5, $t5, $t1
	
 


    
exit: #output if all chars used are valid, code ending
	
	#bnez $t3, abort #checks invalid char flag, if true jump to abort ending to code
	
	
    	
    	#outputs the sum
	li $v0, 1
	  
    	move $a0, $t5
    	syscall
    
    	#ends program	
   	li $v0, 10
    	syscall
    	
abort: #ouput if invalid char is used, code ending
	
	
    	
    	#outputs zero
    	li $v0, 4
    	la $a0, error
    	syscall
    	
    	#ends program
    	li $v0, 10
    	syscall

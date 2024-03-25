.data

enterMsg1: .string "Please enter the 4 digits you will do this 4 times and it will print the total\n"
enterMsg2: .string "Do it one at a time \n"
enterMsg3: .string "Enter next digit \n"
enterMsg4: .string " Total is: \n"
	
.text


#Outputs msg
addi a7, zero, 4
la a0, enterMsg1
ecall

addi a7, zero, 4
la a0, enterMsg2
ecall


# read an integer and store the input
addi a7, zero, 5
ecall
add s0, zero, a0


# output the text
# then receive the input and add to total

##
addi a7, zero, 4
la a0, enterMsg3
ecall

addi a7, zero, 5
ecall
add s0, s0, a0

addi a7, zero, 4
la a0, enterMsg3
ecall

addi a7, zero, 5
ecall
add s0, s0, a0

addi a7, zero, 4
la a0, enterMsg3
ecall

addi a7, zero, 5
ecall
add s0, s0, a0
##



#output total
addi a7, zero, 4
la a0, enterMsg4
ecall


add a0, s0, zero
addi a7, zero, 1
ecall


addi a7, zero, 10
ecall

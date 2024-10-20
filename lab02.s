
.data

array: .word 1, 0, 1, 12, 0, 1, 4

.text

    la a0, array
    li a1, 7    # unsigned
    li a2, 1
prog:
#-----------------------------
# Write your code here!
search_last_match:
    add  s0, zero, zero # if not found match  
loop:
    beq a1,zero, done
    lw t1, 0(a0)
    bne t1, a2, next 
    add s0, a0, zero
    
next: # go to next word
    addi a0, a0 , 4
    addi a1, a1, -1
    j loop
    
# Do not remove the prog label or write code above it!
#-----------------------------
done:
    addi a7, zero, 10 
    ecall

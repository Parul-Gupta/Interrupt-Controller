.text

B .main
B .exc_handler
B .int_handler

.exc_handler:
movz P2,SP
movu sp,0xfffc
st r0 , -4[sp]
st r1 , -8[sp]
st r2 , -12[sp]
st r3 , -16[sp]
st r4 , -20[sp]
st r5 , -24[sp]
st r6 , -28[sp]
st r7 , -32[sp]
st r8 , -36[sp]
st r9 , -40[sp]
st r10 , -44[sp]
st r11 , -48[sp]
st r12 , -52[sp]
st r13 , -56[sp]
st r15 , -60[sp]
movz r0,p2
st r0,-64[sp]
movz r0,p4
st r0,-68[sp]
movz r0,p1
st r0,-72[sp]
sub sp,sp,72
add sp,sp,72
ld r0,-72[sp]
ld r0 , -4[sp]
ld r1 , -8[sp]
ld r2 , -12[sp]
ld r3 , -16[sp]
ld r4 , -20[sp]
ld r5 , -24[sp]
ld r6 , -28[sp]
ld r7 , -32[sp]
ld r8 , -36[sp]
ld r9 , -40[sp]
ld r10 , -44[sp]
ld r11 , -48[sp]
ld r12 , -52[sp]
ld r13 , -56[sp]
ld r15 , -60[sp]
ld sp,-64[sp]
retz

.int_handler:
movz P2,SP
movu sp,0xfffc
st r0 , -4[sp]
st r1 , -8[sp]
st r2 , -12[sp]
st r3 , -16[sp]
st r4 , -20[sp]
st r5 , -24[sp]
st r6 , -28[sp]
st r7 , -32[sp]
st r8 , -36[sp]
st r9 , -40[sp]
st r10 , -44[sp]
st r11 , -48[sp]
st r12 , -52[sp]
st r13 , -56[sp]
st r15 , -60[sp]
movz r0,p2
st r0,-64[sp]
movz r0,p4
st r0,-68[sp]
movz r0,p1
st r0,-72[sp]
sub sp,sp,72
add sp,sp,72
ld r0,-72[sp]
ld r0 , -4[sp]
ld r1 , -8[sp]
ld r2 , -12[sp]
ld r3 , -16[sp]
ld r4 , -20[sp]
ld r5 , -24[sp]
ld r6 , -28[sp]
ld r7 , -32[sp]
ld r8 , -36[sp]
ld r9 , -40[sp]
ld r10 , -44[sp]
ld r11 , -48[sp]
ld r12 , -52[sp]
ld r13 , -56[sp]
ld r15 , -60[sp]
ld sp,-64[sp]
retz

.main:

mov r5,8
mov r4,9
div r4,r4,0
mov r6,8
mov r3,10
mov r7,8
add r7,r3,r6
movh r1,20
ld r7,4[r1]
st r5,4[r1]
.end

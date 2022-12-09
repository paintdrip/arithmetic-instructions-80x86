# arithmetic-instructions-80x86
## an assembly language program in COM file format for calculating a function of 5 variables.

![preview-1](https://i.ibb.co/9hq3SQR/Screenshot-4.png)

```
Code	segment	 para
assume cs:code, ds:code, es:code
org  100h
start:
mov	al, A 
imul	B	
 
sub al, C 
sbb ah, 0 

xor dx, dx 
mov dl, D 
idiv dl
mov dl, al 
add dl, E
adc dh, 0 

mov F, dx

mov	ax, 4C00h 
int 	21h 
 
A	DB	2
B	DB	4
C	DB	2
D    DB    2
E    DB    1
F	DW	?		
 
Code	ends
end	start
```


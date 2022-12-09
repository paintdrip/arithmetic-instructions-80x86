;	29.  F = ( A * B - C ) / D + E 
Code	segment	 para
assume cs:code, ds:code, es:code
org  100h
start:
mov	al, A 
imul	B	; умножение на b, результат в ax
 
sub al, C ; al - C
sbb ah, 0 ; вычесть флаг цф если произошло переполнение

xor dx, dx ; очистка регистра
mov dl, D 
idiv dl ; поделили ax на dl, результат в al
mov dl, al ; переместили al в dl 
add dl, E ; прибавили Е к dl
adc dh, 0 ; учли переполнение 

mov F, dx ; поместили результат в переменную F

mov	ax, 4C00h 
int 	21h ; 21 прерывание, остановка выполнения
 
A	DB	2
B	DB	4
C	DB	2
D    DB    2
E    DB    1
F	DW	?		
 
Code	ends
end	start

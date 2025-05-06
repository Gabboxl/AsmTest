.data
; nel dubbio facciamo tutto in 64 bit così è più swag
swagNum dq 7
swagNum2 dq 89
swagMex dq "bella", 0

aka dq 7
akaOffset dq offset aka ; quadword perchè siamo a 64 bit
.code
TestFunction proc
	mov rax, 89


	; load immediate value
	mov rax, swagNum
	mov rax, [swagNum]
	mov rax, qword ptr swagNum


	; load effective address
	mov rax, offset swagNum
	lea rax, swagNum
	lea rax, [swagNum]  ; uguale al precedente
	
	mov rax, [rax] ; dereference di se stesso


	; non è possibile (almeno in MASM) effettuare un dereference diretto di una variabile (ovvero mov rax, [akaOffset]):
	; ritornerebbe comunque in rax il contenuto di akaOffset - è sempre un load immediate value
	mov rax, akaOffset
	mov rax, [rax]
	
	mov rax, rax
	mov rax, [rax]	; dereference address and load value

	ret
TestFunction endp
end

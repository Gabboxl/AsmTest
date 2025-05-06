.data
swagNum dq 7
swagMex dq "bella", 0

.code
TestFunction proc
	mov rax, 89

	mov rax, swagNum
	mov rax, [swagNum] ; uguale al precedente

	lea rax, swagNum
	lea rax, [swagNum]  ; uguale al precedente


	ret
TestFunction endp
end

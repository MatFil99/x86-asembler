    section .text
    global removerng
removerng:
;prolog
    push ebp
    mov ebp, esp

    push ebx

    mov ebx, [ebp+8]
    mov eax, [ebp+8]
    mov cl, [ebp+12]
    mov ch, [ebp+16]
    inc ch
begin:
    mov dl, [eax]
    inc eax
    test dl, dl
    jz  end
    cmp dl, cl
    jns next        ; jesli dl>cl skocz
    mov [ebx], dl
    inc ebx
    jmp begin
    ;inc eax

next:
    cmp dl, ch      
    ;inc eax
    js begin        ; jesli dl<ch skocz
    mov [ebx], dl
    inc ebx
    jmp begin

end:
    mov dl, 0
    mov [ebx], dl

    pop ebx
    mov esp, ebp
    pop ebp
    ret

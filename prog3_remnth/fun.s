    section .text
    global remnth


remnth:
    push    ebp
    mov    ebp, esp

    push   ebx
    push   esi
header:
    mov    eax, [ebp+8]     ; przekazany wskaznik na string
    mov    edx, [ebp+8]     ; wskaznik na odpowiedni znak w stringu
    mov    ecx, [ebp+12]    ; przekazana wartosc n
    mov    esi, 0           ; licznik petli
body:
    mov    bl, [eax]
    inc    eax
    inc    esi
    cmp    bl, 0
    jz     epilog
    cmp    esi, ecx
    jz     erase
    mov    [edx], bl
    inc    edx
    ;inc    eax
    jmp    body
erase:
    ;inc    eax
    mov    esi, 0
    jmp    body

epilog:
    mov    bl, 0
    mov    [edx], bl

    pop    esi
    pop    ebx
    mov    esp, ebp
    pop    ebp
    ret

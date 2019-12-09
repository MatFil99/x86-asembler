    section .text
    global leavelastndig

leavelastndig:
    ;prolog
    push    ebp
    mov     ebp, esp

    push    ebx
header:
    mov     eax, [ebp+8]    ; przechowujemy wskaznik na string
    mov     ecx, [ebp+12]   ; przekazany int n
    mov     edx, 0          ; licznik cyfr w napisie

first_part:
    mov     bl, [eax]
    inc     eax
    test    bl, bl
    jz      body
    cmp     bl, 58
    jns     first_part
    cmp     bl, 48
    js      first_part
    inc     edx
    jmp     first_part
    

body:
    sub     edx, ecx    ; obliczamy ile cyfr mamy pominac
    mov     eax, [ebp+8]
    mov     ecx, eax    ; wskaznik na odpowiedni znak w napisie

lop1:
    mov     bl, [eax]
    test    bl, bl
    jz      epilog
    inc     eax
    cmp     bl, 57
    jns     lop1
    cmp     bl, 48
    js      lop1
    dec     edx
    cmp     edx, 0
    jns     lop1
    mov     [ecx], bl
    inc     ecx
    jmp     lop1



epilog:
    mov     bl, 0
    mov     [ecx], bl

    pop     ebx

    mov     esp, ebp
    pop     ebp
    ret
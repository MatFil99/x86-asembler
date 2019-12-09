section .text
global removerng

removerng:
    push    ebp
    mov     ebp, esp

    push    ebx             ; zapamietujemy ebx
    mov     eax, [ebp+8]    ; wskaznik na ostatni przetwarzany najt *s
    mov     ebx, eax        ; wskaznik na odpowiedni bajt *s
    mov     cl, [ebp+12]    ; argument funkcji - a
    mov     ch, [ebp+16]    ; argument funkcji - b
begin_loop:
    mov     dl, [eax]
    cmp     dl, cl          ; czy s[i]>a
    jns     incr_loop
    ;mov     [ebx], dl
    ;inc     ebx
    ;inc     eax
    ;jmp     begin_loop

second_part:
    ;cmp     dl, ch
    ;js      incr_loop
    ;mov     [ebx], dl
    ;inc     ebx
incr_loop:
    ;inc     eax
    ;test    dl, dl      ; jesli dl != 0 wykonuj petle
    ;jnz     begin_loop

    ;mov     ecx, eax
    ;cmp     ecx, 100
    ;js      end         ; skocz jesli znak ujemny ( cl < 10 )
    ;add     ecx, 4
    ;mov     [ebp+1], ecx

end:
    pop     ebx
    mov     esp, ebp
    pop     ebp
    ret
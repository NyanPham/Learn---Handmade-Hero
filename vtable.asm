section .data
    ; vtable for our class
    vtable:
        dd method1
        dd method2

    ; object instance (just the vtable pointer)
    object:
        dd vtable

section .text
    ; our class methods
    method1:
        ; method implementation goes here
        ret

    method2:
        ; method implementation goes here
        ret

    ; usage
    global _start
    _start:
        ; call method1
        mov eax, [object]
        call [eax]

        ; call method2
        add eax, 4
        call [eax]

        ; exit
        mov eax, 0x60
        xor edi, edi
        syscall

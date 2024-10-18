global _start
  
    section .text
    _start:
        mov rax,1        ; prepara o sistema para fazer uma escrita de um texto
        mov rdi,1        ; prepara a saida do texto da tela
        mov rsi,mensagem ; imprimir a mensagem na tela
        mov rdx,13       ; quantidade de caracteres
        syscall          ; chama o sistema para preparar a saida
        mov rax,60       ; chama para a saida de sistema
        xor rdi,rdi      ; exercutar o sitema operacional
        syscall          ; invocar o sistema operacional para fechar

        section .data
        mensagem:db 'Hello,World',10  ;O valor 10 representa a quebra de linha
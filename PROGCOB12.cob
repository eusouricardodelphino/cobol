        IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB07.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
          DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOTA1 PIC 9(2)V9 VALUE ZEROS.
       77 WRK-NOTA2 PIC 9(2)V9 VALUE ZEROS.
       77 WRK-MEDIA PIC 9(2)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 0100-INICIALIZAR.
           
           IF WRK-NOTA1 > 0 AND WRK-NOTA2 > 0
             PERFORM 0200-PROCESSAR
           END-IF.
           
           PERFORM 0300-FINALZIAR.

           STOP RUN.

       0100-INICIALIZAR.
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
       0200-PROCESSAR.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           
           IF WRK-MEDIA < 2
             DISPLAY "REPROVADO"
           ELSE
             IF WRK-MEDIA < 6
               DISPLAY "RECUPERAÇÃO"
             ELSE
               DISPLAY 'APROVADO'
             END-IF
           END-IF.

       0300-FINALZIAR.
           DISPLAY '-------------------------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
           

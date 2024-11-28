       IDENTIFICATION DIVISION.
       PROGRAM-ID. AUMENTO_ESTRUTURADO.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME             PIC X(20)    VALUE SPACES.
       77 WRK-ANO-ENTRADA      PIC 9(04)    VALUE ZEROS.
       77 WRK-SALARIO          PIC 9(05)V99 VALUE ZEROS.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.

           PERFORM 0100-INICIALIZAR.

           IF WRK-ANO-ENTRADA > 0 AND WRK-SALARIO > 0 
             PERFORM 0200-PROCESSAR
           END-IF.
           PERFORM 0300-FINALIZAR.
           
           STOP RUN.
       0100-INICIALIZAR.
           DISPLAY 'NOME..'
           ACCEPT WRK-NOME.

           DISPLAY 'ANO DE ENTRADA NA EMPRESA..'
           ACCEPT WRK-ANO-ENTRADA.
          
           DISPLAY 'SALARIO..'
           ACCEPT WRK-SALARIO.

       0200-PROCESSAR.
           EVALUATE (2024 - WRK-ANO-ENTRADA)
            WHEN 0 THRU 1
              COMPUTE WRK-SALARIO = WRK-SALARIO * 1
            WHEN 2 THRU 5
              COMPUTE WRK-SALARIO = WRK-SALARIO * 1,05
            WHEN 6 THRU 15
              COMPUTE WRK-SALARIO = WRK-SALARIO * 1,10
            WHEN OTHER
              COMPUTE WRK-SALARIO = WRK-SALARIO * 1,15
           END-EVALUATE.
           
           DISPLAY '========================='.
           DISPLAY 'O VALOR DO SALARIO ATUAL É ' WRK-SALARIO.
       0300-FINALIZAR.
           DISPLAY "=========================".
           DISPLAY "PROGRAMA FINALIZADO!".
           DISPLAY "=========================".

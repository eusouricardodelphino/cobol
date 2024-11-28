       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB14.
      *>**********************************
      *> ÁREA DE COMENTÁRIOS - DESCOBRI!
      *> AUHTOR = RICARDO DELPHINO
      *> OBJETIVO = RECEBER UM NÚMERO E GERAR A TABUADA DE 1 A 10
      *> UTILIZAR PERFORM - VARYING
      *> DATA 22/10/2024
      *>************************************ 
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
          DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUMERO   PIC 9(02) VALUE ZEROS.
       77 WRK-RESULT   PIC 9(02) VALUE ZEROS.
       77 WRK-CONTADOR PIC 9(02) VALUE 1.
       PROCEDURE DIVISION.
       0001-PRINCIPAL.
           PERFORM 100000-INICIALIZAR.
           
           IF WRK-NUMERO > 0 
             PERFORM 200000-PROCESSAR
           END-IF.
           
           PERFORM 300000-FINALZIAR.

           STOP RUN.

       100000-INICIALIZAR.
           DISPLAY '----------------------------'.
           DISPLAY ' INICIALIZANDO O PROGRAMA '.
           DISPLAY '----------------------------'
           DISPLAY 'ENTRE COM UM NÚMERO ENTRE 1 E 9 PARA SABER SUA '
                   'TABOADA'.
           ACCEPT WRK-NUMERO.
           
       200000-PROCESSAR.
           
           PERFORM VARYING WRK-CONTADOR FROM 1 BY 1
                           UNTIL WRK-CONTADOR > 10
             COMPUTE WRK-RESULT = WRK-NUMERO * WRK-CONTADOR
             DISPLAY WRK-NUMERO ' X ' WRK-CONTADOR ' = ' WRK-RESULT
           END-PERFORM.
       300000-FINALZIAR.
           DISPLAY '-------------------------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
           DISPLAY '-------------------------'.
           

       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      *>**********************************
      *> ÁREA DE COMENTÁRIOS - DESCOBRI!
      *> AUHTOR = RICARDO DELPHINO
      *> OBJETIVO = RECEBER UM NÚMERO E GERAR A TABUADA DE 1 A 10
      *> UTILIZAR PERFORM - UNTIL
      *> DATA 22/10/2024
      *>************************************ 
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
          DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY "BOOK.CPY" IN 'COPYBOOKS'.
       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 100000-INICIALIZAR.
           
           IF WRK-VENDAS > 0 
             PERFORM 200000-PROCESSAR UNTIL WRK-VENDAS = 0
           END-IF.
           
           PERFORM 300000-FINALIZAR.

           STOP RUN.


      *>*********************************************
       100000-INICIALIZAR.
      *>*********************************************
           DISPLAY 'ENTRE COM A VENDA OU 0 PARA SAIR'.
           ACCEPT WRK-VENDAS.

      *>*********************************************    
       200000-PROCESSAR.
      *>*********************************************
           ADD 1 TO WRK-QTD.
           ADD WRK-VENDAS TO WRK-ACUM.
           PERFORM 100000-INICIALIZAR.

      *>*********************************************    
       300000-FINALIZAR.
      *>*********************************************
           DISPLAY '-------------------------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
           DISPLAY '-------------------------'.
           DISPLAY 'VALOR ACUMULADO: R$ ' WRK-ACUM.
           DISPLAY 'QTD DE VENDAS REALIZADAS: ' WRK-QTD.

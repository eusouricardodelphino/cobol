       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB15.
      *>**********************************
      *> ÁREA DE COMENTÁRIOS - DESCOBRI!
      *> AUHTOR = RICARDO DELPHINO
      *> OBJETIVO = CALCULAR O INVESTIMENTO APÓS RECEBER O MONTANTE
      *> O TEMPO E A TAXA
      *> DATA 30/10/2024
      *>************************************ 
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
          DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *> 
           77 WRK-MONTANTE       PIC 9(6)V99    VALUE ZEROS.
      *> 
           77 WRK-RESULTADO      PIC 9(12)V99   VALUE ZEROS.
      *> 
           77 WRK-MESES          PIC 9(02)      VALUE ZEROS.
      *>  
           77 WRK-TAXA           PIC 9(02)V99   VALUE ZEROS.
      *>  
           77 WRK-CONTADOR       PIC 9(02)      VALUE ZEROS.
      *> 
           77 WRK-RESULT-ED      PIC ZZZ.ZZ9,99 VALUE ZEROS.
      *>     
       PROCEDURE DIVISION.

       0001-PRINCIPAL.
           PERFORM 100000-INICIALIZAR.

           IF WRK-MONTANTE NOT EQUAL 0
               PERFORM 200000-PROCESSAR
           END-IF.

           PERFORM 300000-FINALIZAR.

           STOP RUN.

      *>*********************************************
       100000-INICIALIZAR.
      *>*********************************************
           DISPLAY 'ENTRE COM O VALOR DO INVESTIMENTO OU 0 PARA SAIR'.
           ACCEPT WRK-MONTANTE.

      *>*********************************************    
       200000-PROCESSAR.
      *>*********************************************
           DISPLAY 'ENTRE COM O VALOR DO TEMPO EM MESES'.
           ACCEPT WRK-MESES.
      *>
           DISPLAY 'ENTRE COM O VALOR DA TAXA ACORDADA'.
           ACCEPT WRK-TAXA.
      *>    
           MOVE 1     TO WRK-CONTADOR.

           PERFORM WRK-MESES TIMES
           
             IF WRK-CONTADOR = 1
                COMPUTE WRK-RESULTADO = 
                      WRK-MONTANTE * (1 + (WRK-TAXA/100))
                DISPLAY 'RESULTADO DA APLICAÇÃO APÓS ' 
                      WRK-CONTADOR ' MÊS: ' WRK-RESULTADO
             ELSE
                COMPUTE WRK-RESULTADO = 
                WRK-RESULTADO * (1 + (WRK-TAXA/100))
                DISPLAY 'RESULTADO DA APLICAÇÃO APÓS ' 
                      WRK-CONTADOR ' MESES: ' WRK-RESULTADO
             END-IF
             ADD 1    TO WRK-CONTADOR
           END-PERFORM.

      *>*********************************************    
       300000-FINALIZAR.
      *>*********************************************
           MOVE WRK-RESULTADO TO WRK-RESULT-ED.
           DISPLAY '-------------------------'.
           DISPLAY 'FINAL DE PROCESSAMENTO'.
           DISPLAY '-------------------------'.
           IF WRK-MONTANTE = 0
                DISPLAY 'PROGRAMA FINALIZADO SEM PROCESSAMENTO'
           ELSE
                DISPLAY 'VALOR ACUMULADO: R$ ' WRK-RESULT-ED
                DISPLAY 'QTD DE MESES PASSADOS: ' WRK-MESES
           END-IF.

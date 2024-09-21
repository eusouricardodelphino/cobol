       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB08.
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
           ACCEPT WRK-NOTA1.
           ACCEPT WRK-NOTA2.
           COMPUTE WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

           EVALUATE WRK-MEDIA
             WHEN 6 THRU 10
               DISPLAY "APROVADO"
             WHEN 2 THRU 5,99
               DISPLAY "RECUPERAÇÃO"
             WHEN OTHER
               DISPLAY "REPROVADO"
             END-EVALUATE.

           DISPLAY 'MEDIA: ' WRK-MEDIA.
           STOP RUN.
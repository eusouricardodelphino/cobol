       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1 PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2 PIC 9(02) VALUE ZEROS.
       77 WRK-RESULT PIC 9(04) VALUE ZEROS.
       77 WRK-RESTO PIC 9(02) VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT WRK-NUM1 FROM CONSOLE.
           ACCEPT WRK-NUM2 FROM CONSOLE.
           DISPLAY "=======================".
           DISPLAY 'NUMERO 1.. ' WRK-NUM1.
           DISPLAY 'NUMERO 2.. ' WRK-NUM2.
       
           ADD WRK-NUM1 WRK-NUM2 TO WRK-RESULT.
           DISPLAY 'SOMA.. ' WRK-RESULT. 

           SUBTRACT WRK-NUM1 FROM WRK-NUM2 GIVING WRK-RESULT.
           DISPLAY 'SUBTRAÇÃO.. ' WRK-RESULT.

           DIVIDE WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT
            REMAINDER WRK-RESTO.
           DISPLAY 'DIVISÃO.. ' WRK-RESULT.
           DISPLAY 'RESTO.. ' WRK-RESTO.

           MULTIPLY WRK-NUM1 BY WRK-NUM2 GIVING WRK-RESULT.
           DISPLAY 'MULTIPLICAÇÃO.. ' WRK-RESULT. 

           COMPUTE WRK-RESULT = (WRK-NUM1 + WRK-NUM2) / 2.
           DISPLAY 'MEDIA.. ' WRK-RESULT.

           STOP RUN.

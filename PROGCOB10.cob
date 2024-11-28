       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB10.  
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-USUARIO PIC X(20) VALUE SPACES.
       77 WRK-NIVEL   PIC 9(02) VALUE ZEROS.
         88 ADM    VALUE 01.
         88 USER   VALUE 02.  
       PROCEDURE DIVISION.
           DISPLAY 'USUARIO..'
           ACCEPT WRK-USUARIO.

           DISPLAY 'NÍVEL..'
           ACCEPT WRK-NIVEL.

           IF ADM
             DISPLAY 'NIVEL - ADMINISTRADOR'
           ELSE
             IF USER
               DISPLAY 'NIVEL - USUARIO'
             ELSE
              DISPLAY 'USUÁRIO NÃO AUTORIZADO'
             END-IF
           END-IF.
             

           STOP RUN.


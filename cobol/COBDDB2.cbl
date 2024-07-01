       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBDB2.
       DATA DIVISION.
         WORKING-STORAGE SECTION.

         01  WS-SQLREAD           PIC X(1).

      *** INCLUDING SQLCA COPYBOOK *************
           EXEC SQL
                INCLUDE SQLCA
           END-EXEC.

       PROCEDURE DIVISION.
       MAIN-PARA.

           EXEC SQL
                SELECT IBMREQD INTO: WS-SQLREAD
                FROM SYSIBM.SYSDUMMY1
           END-EXEC.
           Display 'testing the cob-db2'.

              STOP RUN.
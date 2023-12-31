IDENTIFICATION DIVISION.
PROGRAM-ID. STATUS.

ENVIRONMENT DIVISION.
*>	IDENTIFY THE FILE
	INPUT-OUTPUT SECTION.
		FILE-CONTROL.
			SELECT MYFILE *> PROGRAM FILENAME
			ASSIGN TO "C:\IMDBlist.txt"
			ORGANISATION IS LINE SEQUENTIAL
			ACCESS MODE IS SEQUENTIAL.
			FILE STATUS IS FS.

DATA DIVISION.
	FILE SECTION.
	FD MYFILE.
	01 MYFILE-RECORDS PICTURE X(219).

	WORKING-STORAGE SECTION.

	01 WS-RECORD PICTURE X(219).
	
	01 END-OF-FILE PICTURE A(3) VALUE 'NO'.

	01 FS PICTURE 9(2)

PROCEDURE DIVISION.

	OPEN INPUT MYFILE.
	DISPLAY 'OPENING FILE STATUS' FS


	00

	10 END-OF-FILE

	41 OPENING

	99

	OPEN INPUT MYFILE.
	DISPLAY 'OPENING AGAIN FILE STATUS' FS

	PERFORM 9 TIMES *>UNTIL END-OF-FILE = 'YES'
		READ MYFILE
			INTO WS-RECORD
			AT END
				MOVE 'YES' TO END-OF-FILE
				DISPLAY 'FILE ENDED HERE FILE STATUS' FS
			NOT AT END
				DISPLAY WS-RECORD
		END-READ.
	END-PERFORM.
	
	DISPLAY WS-RECORD.

	CLOSE MYFILE.

	DISPLAY 'CLOSING FILE STATUS IS ' FS.

STOP RUN.
IDENTIFICATION DIVISION.
PROGRAM-ID. TABLE.
DATA DIVISION.
FILE SECTION.
WORKING-STORAGE SECTION.
01	STUDENT-TABLE.
	05	STUDENTS	OCCURS 30 TIMES.
		10 STUDENT-NAME	PIC X(15).
		10 SUBJECTS	PIC 9(3)	OCCURS 3 TIMES.
PROCEDURE DIVISION.

	MOVE 'STEVE	35 57 83' TO STUDENTS(1).

	DISPLAY STUDENTS(1).

	DISPLAY SUBJECTS(1 2).

	STOP RUN.
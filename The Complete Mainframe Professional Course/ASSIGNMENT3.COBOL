IDENTIFICATION DIVISION.
PROGRAM-ID. ASSIGNMENT3.
DATA DIVISION.
WORKING-STORAGE SECTION.
01	USER-INCOME	PIC 999999 VALUE ZEROES.
01	TAX	PIC ZZZZZZ.99 VALUE ZEROES.


PROCEDURE DIVISION.

000-MAIN-PROCEDURE.
	PERFORM 100-ACCEPT-INCOME.
	PERFORM 200-CALCULATE-TAX.
	STOP RUN.

100-ACCEPT-INCOME.
	DISPLAY "PLEASE ENTER YOUR INCOME FOR THIS YEAR: "
	ACCEPT USER-INCOME.

200-CALCULATE-TAX.
	IF USER-INCOME > 100000
		COMPUTE TAX = USER-INCOME / 10

		DISPLAY "vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv"
		DISPLAY "YOUR TAX FOR THIS YEAR IS: " TAX
		DISPLAY "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"

	ELSE
		DISPLAY "YOUR HAVE NO TAX TO PAY"
	END-IF.

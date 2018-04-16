CALL alan -import ..\alanlib_ita\ %1 %2 %3 %4 %5
IF ERRORLEVEL 0 (
	CALL arun %~n1.a3c
)
EXIT /B

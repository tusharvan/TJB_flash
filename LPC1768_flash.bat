@echo off
set addr=C:\Users\Tushar\Documents\ARM LPC1768\Programs\blink\
cd %addr%
pwd

if exist "%addr%main.bin" ( 
	if exist "f:" (
		f:
		pwd
	) else (goto :board)
	
	if exist "f:\firmware.bin" (
		rm firmware.bin
		xcopy "%addr%main.bin" f:\
	) else (echo error3 - firmware.bin doesn't exist)
) else ( 
	echo error1 - not compiled 
)

pause
exit

:board
echo error2 - board not connected
pause
exit

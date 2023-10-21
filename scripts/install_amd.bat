@echo off
setlocal
call env.cmd

echo Download AMD Driver ...
REM TODO: cannot download
call:curl %AMD_DRIVER_URL% %INSTALL_ROOT%\%AMD_DRIVER_FILE%

REM echo Installing AMD Driver ...
REM REM TODO: do we need to do this?

goto :exit

:curl
%_CURL% -L %~1 --output %~2
exit /b

:exit
pause

endlocal

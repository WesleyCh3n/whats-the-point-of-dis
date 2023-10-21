@echo off
setlocal
call env.cmd

echo Download AMD Driver ...
REM TODO: cannot download
call util.cmd curl %AMD_DRIVER_URL% %INSTALL_ROOT%\%AMD_DRIVER_FILE%

REM echo Installing AMD Driver ...
REM REM TODO: do we need to do this?

endlocal

@echo off
setlocal
call env.cmd

echo Cleaning workspace ...
rmdir /s /q "%SHARK_ROOT%" >nul 2>nul
mkdir "%SHARK_ROOT%" >nul 2>nul

echo Downloading shark ...
call util.cmd curl %SHARK_URL% %INSTALL_ROOT%\%SHARK_FILE%
move %INSTALL_ROOT%\%SHARK_FILE% %SHARK_ROOT%\%SHARK_FILE%

goto :exit

:curl
%_CURL% -L %~1 --output %~2
exit /b

:exit
pause

endlocal

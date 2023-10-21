@echo off
setlocal
call env.cmd

rmdir /s /q "%SD_ROOT%" >nul 2>nul
call:curl %SD_URL% %INSTALL_ROOT%\%SD_FILE%
call:extract %INSTALL_ROOT%\%SD_FILE% %INSTALL_ROOT%
echo [INFO] Rename ...
cd %INSTALL_ROOT%
move stable-diffusion-webui-directml-c55109980d9b08ad603808f159036666a8e72135 %SD_ROOT%
echo [INFO] Copy Essential ...
copy %INSTALL_ROOT%\scripts\asrwebui.bat %SD_ROOT%\asrwebui.bat
echo [INFO] Cleaning workspace ...
del %INSTALL_ROOT%\%SD_FILE%

goto :exit

endlocal

:curl
%_CURL% -L %~1 --output %~2
exit /b

:extract
%_7Z% x %~1 -o%~2 -aoa >nul
exit /b

:exit
pause

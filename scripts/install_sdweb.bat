@echo off
setlocal
call env.cmd

rmdir /s /q "%SD_ROOT%" >nul 2>nul
call util.cmd curl %SD_URL% %INSTALL_ROOT%\%SD_FILE%
call util.cmd unzip %INSTALL_ROOT%\%SD_FILE% %INSTALL_ROOT%
move stable-diffusion-webui-directml-c55109980d9b08ad603808f159036666a8e72135 %SD_ROOT%
del %INSTALL_ROOT%\%SD_FILE%
copy %INSTALL_ROOT%\asrwebui.bat %SD_ROOT%\asrwebui.bat

endlocal

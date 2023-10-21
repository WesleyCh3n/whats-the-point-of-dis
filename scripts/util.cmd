@echo off
call env.cmd
shift & goto :%~1
goto exit

:downloadps1
echo Downloading %~1 to %~2 ...
powershell -command "(new-object System.Net.WebClient).DownloadFile('%~1','%~2')"
exit /b

:unzipps1
powershell -command "Expand-Archive '%~1' -DestinationPath '%~2'"
exit /b

REM :download
REM echo Downloading %~1 to %~2 ...
REM python.exe %INSTALL_ROOT%\script.py %~1 %~2
REM exit /b

:curl
%_CURL% -L %~1 --output %~2
exit /b

:extract
%_7Z% x %~1 -o%~2 -aoa
exit /b

:exit
exit /b

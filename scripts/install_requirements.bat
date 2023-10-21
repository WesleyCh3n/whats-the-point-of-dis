@echo off
setlocal

call env.cmd

REM=============================================================================
REM Python
REM=============================================================================
echo [INFO] Setup Python 3.10.11 ===============================================
REM echo [INFO] Initializing workspace ...
REM cd %INSTALL_ROOT%
REM rmdir /s /q "%PY_ROOT%" >nul 2>nul
REM del /q "%PY_ZIP%" >nul 2>nul
REM echo [INFO] Downloading Python 3.10.11 ...
REM call:downloadps1 %PY_URL% %INSTALL_ROOT%\%PY_ZIP%
REM echo [INFO] Extracting Python 3.10.11 ...
REM call:unzipps1 %PY_ZIP% %PY_ROOT%
REM echo [INFO] Modify import information ...
REM echo import site>>"%PY_ROOT%\python310._pth"
REM echo [INFO] Downloading pip ...
REM call:downloadps1 %PIP_URL% %PY_ROOT%\%PIP_FILE%
REM echo [INFO] Installing pip ...
REM %_PY% %PY_ROOT%\%PIP_FILE%
REM echo [INFO] Installing venv ...
REM %_PIP% install virtualenv
REM xcopy /Y %INSTALL_ROOT%\py-tcl\ %PY_ROOT% /E /H /C
REM echo [INFO] Cleaning workspace ...
REM del /s /q "%INSTALL_ROOT%\%PY_ZIP%"

REM=============================================================================
REM CURL
REM=============================================================================
echo [INFO] Setup CURL =========================================================
echo [INFO] Initializing workspace ...
cd %INSTALL_ROOT%
rmdir /s /q %CURL_ROOT% >nul 2>nul
echo [INFO] Downloading curl ...
call:downloadps1 %CURL_URL% %INSTALL_ROOT%\%CURL_FILE%
call:unzipps1 %INSTALL_ROOT%\%CURL_FILE% %INSTALL_ROOT%
move %INSTALL_ROOT%\curl-8.4.0_3-win64-mingw %CURL_ROOT%
echo [INFO] Cleaning workspace ...
del /s /q %INSTALL_ROOT%\%CURL_FILE%

REM=============================================================================
REM 7z
REM=============================================================================
echo [INFO] Setup 7z ===========================================================
echo [INFO] Initializing workspace ...
cd %INSTALL_ROOT%
mkdir %BIN_DIR%
echo [INFO] Downloading 7z ...
call:curl https://www.7-zip.org/a/7zr.exe %BIN_DIR%\7zr.exe
call:curl %LZMA_URL% %LZMA_FILE%
%BIN_DIR%\7zr.exe x %LZMA_FILE% -o%LZMA_ROOT% -aoa
echo [INFO] Cleaning workspace ...
del /s /q %INSTALL_ROOT%\%LZMA_FILE%

REM=============================================================================
REM Git
REM=============================================================================
echo [INFO] Setup Git ==========================================================
echo [INFO] Initializing workspace ...
cd %INSTALL_ROOT%
rmdir /s /q %GIT_ROOT%
echo [INFO] Downloading Git ...
call:curl %GIT_URL% %INSTALL_ROOT%\%GIT_FILE%
call:extract %INSTALL_ROOT%\%GIT_FILE% %GIT_ROOT%
echo [INFO] Cleaning workspace ...
del /s /q %INSTALL_ROOT%\%GIT_FILE%

REM=============================================================================
REM Python Tcl/Tk
REM=============================================================================
echo [INFO] Extracting tcl/tk libraries ...
call:extract %INSTALL_ROOT%\py-tcl.zip %PY_ROOT%

goto :exit

REM=============================================================================
REM Functions
REM=============================================================================
:downloadps1
echo Downloading %~1 to %~2 ...
powershell -command "(new-object System.Net.WebClient).DownloadFile('%~1','%~2')"
exit /b

:unzipps1
powershell -command "Expand-Archive '%~1' -DestinationPath '%~2'"
exit /b

:curl
%_CURL% -L %~1 --output %~2
exit /b

:extract
%_7Z% x %~1 -o%~2 -aoa >nul
exit /b

:exit
pause
endlocal

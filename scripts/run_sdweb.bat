@echo off
setlocal
call env.cmd

set path=%PY_ROOT%;%PY_ROOT%\Scripts;%GIT_ROOT%\cmd
set VENV_DIR=%SD_ROOT%\venv

cd %SD_ROOT%
set COMMANDLINE_ARGS=--opt-sub-quad-attention --no-half
call asrwebui.bat

pause
endlocal

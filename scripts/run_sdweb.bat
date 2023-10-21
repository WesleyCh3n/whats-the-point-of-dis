@echo off
setlocal
call path.cmd
echo %path%

cd %INSTALL_ROOT%\stable-diffusion
set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=--opt-sub-quad-attention --no-half

call asrwebui.bat

endlocal

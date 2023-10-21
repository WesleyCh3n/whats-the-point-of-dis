@echo off
setlocal
set INSTALL_ROOT=E:\GitHub\amd_demo
set path=%INSTALL_ROOT%\python_root;%INSTALL_ROOT%\python_root\Scripts;%INSTALL_ROOT%\git\cmd
set VENV_DIR=%INSTALL_ROOT%\venv
echo %path%

cd %INSTALL_ROOT%
python -m virtualenv %VENV_DIR%

set path=%VENV_DIR%\Scripts\;%INSTALL_ROOT%\git\cmd

REM pip install olive-ai[directml]==0.2.1
REM rmdir /s /q olive
REM git clone https://github.com/microsoft/olive --depth 1 --branch v0.2.1

cd olive\examples\directml\stable_diffusion
REM pip install -r requirements.txt
REM pip install pydantic==1.10.12

python stable_diffusion.py --optimize
endlocal

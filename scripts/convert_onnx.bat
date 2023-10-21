@echo off
setlocal
call env.cmd
set VENV_DIR=%INSTALL_ROOT%\venv

%_PY% -m virtualenv %VENV_DIR%

echo [INFO] Activating virtualenv ...
set path=%VENV_DIR%\Scripts\;%INSTALL_ROOT%\git\cmd
echo %path%

echo [INFO] Initializing workspace ...
rmdir /s /q %OLIVE_ROOT%

echo [INFO] Installing requirements ...
pip install olive-ai[directml]==0.2.1
git clone https://github.com/microsoft/olive --depth 1 --branch v0.2.1 %OLIVE_ROOT%
cd %OLIVE_ROOT%\examples\directml\stable_diffusion
pip install -r requirements.txt
pip install pydantic==1.10.12
pip install onnxruntime-directml==1.15.1

cd %OLIVE_ROOT%\examples\directml\stable_diffusion
python stable_diffusion.py --optimize
pause
endlocal

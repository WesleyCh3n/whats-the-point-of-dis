@echo off

set INSTALL_ROOT=E:\GitHub\amd_demo
set BIN_DIR=%INSTALL_ROOT%\bin

set PY_ROOT=%INSTALL_ROOT%\python
set LZMA_ROOT=%INSTALL_ROOT%\7z
set GIT_ROOT=%INSTALL_ROOT%\git
set CURL_ROOT=%INSTALL_ROOT%\curl

set _PY=%PY_ROOT%\python.exe
set _PIP=%PY_ROOT%\Scripts\pip.exe
set _7Z=%INSTALL_ROOT%\7z\7z.exe
set _GIT=%INSTALL_ROOT%\git\cmd\git.exe
set _CURL=%INSTALL_ROOT%\curl\bin\curl.exe

REM set SHARK_ROOT=%INSTALL_ROOT%\shark\
REM set SHARK=%SHARK_ROOT%\shark.exe

REM set SD_ROOT=%INSTALL_ROOT%\stable-diffusion

REM=============================================================================
REM Download URL
REM=============================================================================

set PY_URL=https://www.python.org/ftp/python/3.10.11/python-3.10.11-embed-amd64.zip
set PY_ZIP=python-3.10.11-embed-amd64.zip

set PIP_URL=https://bootstrap.pypa.io/get-pip.py
set PIP_FILE=get-pip.py

set LZMA_URL=https://www.7-zip.org/a/7z2301-x64.exe
set LZMA_FILE=7z2301-x64.exe

set GIT_URL=https://github.com/git-for-windows/git/releases/download/v2.42.0.windows.2/PortableGit-2.42.0.2-64-bit.7z.exe
set GIT_FILE=PortableGit-2.42.0.2-64-bit.7z.exe

set CURL_URL=https://curl.se/windows/dl-8.4.0_3/curl-8.4.0_3-win64-mingw.zip
set CURL_FILE=curl-8.4.0_3-win64-mingw.zip

set AMD_DRIVER_URL=https://drivers.amd.com/drivers/installer/23.20/whql/amd-software-adrenalin-edition-23.10.2-minimalsetup-231019_web.exe
set AMD_DRIVER_FILE=amd-software-adrenalin-edition-23.10.2-minimalsetup-231019_web.exe

set SHARK_URL=https://github.com/nod-ai/SHARK/releases/download/20231009.984/nodai_shark_studio_20231009_984.exe
set SHARK_FILE=shark.exe

set SD_URL=https://github.com/lshqqytiger/stable-diffusion-webui-directml/archive/c55109980d9b08ad603808f159036666a8e72135.zip
set SD_FILE=stable-diffusion-webui-directml.zip

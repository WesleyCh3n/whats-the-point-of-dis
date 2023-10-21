@echo off
setlocal

call env.cmd
set SHARK_ARGS=--iree_vulkan_target_triple=rdna3-7900-windows

echo Opening shark ...
%SHARK_ROOT%\shark.exe %SHARK_ARGS%

endlocal

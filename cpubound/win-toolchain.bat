@echo off

echo Building code.c with clang...
clang -O3 code.c -o code_clang.exe

echo Building code.rs with rust...
rustc --codegen opt-level=3 -o code_rs.exe code.rs

echo Measuring time for code_clang.exe...
powershell -Command "Measure-Command { .\code_clang.exe | Out-Host }"
echo.

echo Measuring time for code_rs.exe...
powershell -Command "Measure-Command { .\code_rs.exe | Out-Host }"
echo.

pause

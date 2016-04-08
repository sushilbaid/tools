@echo off
setlocal
echo %~f1
if  not "%tools%" == "" (
    @echo hi
    @echo hi2
)
@if "%1"=="" goto :Usage
    
@reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d %1 /f 
@goto :exit
:Usage
@echo %0 ^<path-to-your-auto-run-cmd-file^>
@echo.
@echo This script will register given script as AutoRun command for every command prompt launched for the current user.
@echo Example: %0 d:\mytools\setAliases.cmd
@echo This will ensure aliases are initialized in all command prompts
@echo.
:exit
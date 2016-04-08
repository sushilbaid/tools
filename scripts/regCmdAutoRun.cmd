@rem This script can be used to register a script as AutoRun script in command prompt shell
@if "%1"=="" goto :Usage

@echo Registering %~f1 for AutoRun.    
@reg add "HKCU\Software\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d %~f1 /f 
@goto :exit
:Usage
@echo %0 ^<path-to-your-auto-run-cmd-file^>
@echo.
@echo This script will register given script as AutoRun command for every command prompt launched for the current user.
@echo Example: %0 d:\mytools\setAliases.cmd
@echo This will ensure aliases are initialized in all command prompts
@echo.
:exit
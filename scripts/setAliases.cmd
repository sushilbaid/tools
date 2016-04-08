@rem This script is used to set aliases using doskey in command prompt shell
@rem It can be AutoRun for each command prompt using regCmdAutoRun.cmd
@rem After this script is run - doskey /macros can list all the macros
@rem na - macro to edit aliases
@rem ra - macro to run this script file again in the command shell to update macros
@echo off
@setlocal
doskey n=notepad $*
doskey dm=doskey /macros
doskey tw=cd /d "%ProgramFiles(x86)%\Microsoft Visual Studio 14.0\Common7\IDE\CommonExtensions\Microsoft\TestWindow"
doskey cc=cd /d "%ProgramFiles(x86)%\Microsoft Visual Studio 14.0\Team Tools\Dynamic Code Coverage Tools"

@rem set tools env variable to enable these macros
@rem e.g. tools=d:\g\tools\scripts
if  not %tools% == "" (
    doskey na=notepad %tools%\scripts\setAliases.cmd
    doskey ra=%tools%\scripts\setAliases.cmd
    doskey dt=cd /d %tools%
)

@rem To enable pricate macros - 1) set privateTools env variable 2) place script file at %privateTools%\scripts\setAliases.cmd
@rem this will enable to checkin private macros in private repo
@rem e.g. privateTools=d:\g\privateTools
if  not "%privateTools%" == "" if exist "%privateTools%\scripts\setAliases.cmd" (
        doskey npa=notepad %privateTools%\scripts\setAliases.cmd
        doskey rpa=%privateTools%\scripts\setAliases.cmd
        doskey dpt=cd /d %privateTools%
        call %privateTools%\scripts\setAliases.cmd
)





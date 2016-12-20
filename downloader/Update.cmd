@echo off
set PATH=%PATH%;%ProgramFiles(x86)%\GnuWin32\bin;
md Apps\tmp Apps\logs 2> nul
forfiles /p Apps /m *.bat /c "cmd /c @path"

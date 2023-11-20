@echo off

vendor\bin\premake5\premake5.exe --file=build.lua vs2022
popd
pause
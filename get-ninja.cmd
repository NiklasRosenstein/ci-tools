@echo off
REM Download Ninja (https://ninja-build.org) and unpack it into a specific
REM directory. Usage:
REM
REM     get-ninja.cmd v1.7.1 C:\bin
REM     set PATH=C:\bin;$PATH

set VERSION=%1
set DIRECTORY=%2

:MK_TEMPFILE
set TEMPFILE=%TMP%\ninja-win-%RANDOM%.zip
if exist "%TEMPFILE%" GOTO :MK_TEMPFILE

REM Download the Ninja release.
set URL=https://github.com/ninja-build/ninja/releases/download/%VERSION%/ninja-win.zip
echo Downloading %URL% ...
echo   Note: Tempfile "%TEMPFILE%"
curl -sSfLo "%TEMPFILE%" %URL%
if %errorlevel% neq 0 exit /B %errorlevel%

REM Create the output directory and extract the archive.
echo Unpacking ninja-win.zip ...
mkdir "%DIRECTORY%"
7z x "%TEMPFILE" "-o%DIRECTORY%"
if %errorlevel% neq 0 exit /B %errorlevel%

del "%TEMPFILE%"
echo Installed Ninja-%VERSION% to "%DIRECTORY%"

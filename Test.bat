
@echo off
call "%~dp0BitnessHelper.cmd"

echo ----------------
echo Process type: %_BIT_Type%
echo ----------------
echo Is this a 32-bit process: %_BIT_Is32%
echo Is this a 64-bit process: %_BIT_Is64%
echo Is this a WoW (32-bit on 64-bit) process: %_BIT_IsWOW%
echo ----------------
echo 32-bit (x86) Program Files: %_BIT_PrgFiles_32%
echo 64-bit (x64) Program Files: %_BIT_PrgFiles_64%
echo Native Program Files: %_BIT_PrgFiles_NATIVE%
echo ----------------
echo 32-bit (x86) Common Program Files: %_BIT_CommonProg_32%
echo 64-bit (x64) Common Program Files: %_BIT_CommonProg_64%
echo Native Common Program Files: %_BIT_CommonProg_NATIVE%
echo ----------------
echo 32-bit (x86) SYSTEM: %_BIT_SYSTEM_32%
echo 64-bit (x64) SYSTEM: %_BIT_SYSTEM_64%
echo Native SYSTEM: %_BIT_SYSTEM_NATIVE%
echo ----------------


REM To start a process with the bitness of the system, use _BIT_SYSTEM_NATIVE like this
REM "%_BIT_SYSTEM_NATIVE%\WindowsPowerShell\v1.0\powershell.exe"

REM Enable these commands and start the batch from a CMD.exe from C:\Windows\SysWOw64 to see you get different results
REM dir "%_BIT_SYSTEM32%\WindowsPowerShell\v1.0\powershell.exe" /W
REM dir "%_BIT_SYSTEM_NATIVE%\WindowsPowerShell\v1.0\powershell.exe" /W

pause

@REM 32/64-bit (Bitness) Helper 
@REM Copyright © 2010-2016 Michael 'Tex' Hex - http://www.texhex.info/
@REM Licensed under the Apache License, Version 2.0. 
 

@REM This variable only exists on X64 (64-bit machines)
@REM if defined ProgramFiles(x86) GOTO Win_x64
IF "%PROCESSOR_ARCHITECTURE%"=="x86" GOTO x86_CHECK
@REM If we have reached this line, the processor architecture is not x86 - we are on X64 native
GOTO x64_Native


:X86_CHECK
@REM We are either on 32-bit native or running in a WoW on a x64 bit machine
IF "%PROCESSOR_ARCHITEW6432%"=="AMD64" GOTO x32_WOW
@REM If we reach this line, we are on a 32-bit native machine
GOTO x32_Native


:x32_Native
SET _BIT_Type=32-bit native
SET _BIT_Is32=1
SET _BIT_Is64=0
SET _BIT_IsWOW=0

SET _BIT_PrgFiles_32=%ProgramFiles%
SET _BIT_PrgFiles_64=
SET _BIT_PrgFiles_NATIVE=%_BIT_PrgFiles_32%

SET _BIT_CommonProg_32=%CommonProgramFiles%
SET _BIT_CommonProg_64=
SET _BIT_CommonProg_NATIVE=%_BIT_CommonProg_32%

SET _BIT_SYSTEM_32=%SystemRoot%\system32
SET _BIT_SYSTEM_64=
SET _BIT_SYSTEM_NATIVE=%_BIT_SYSTEM_32%
GOTO ENDE


:x32_WOW
SET _BIT_Type=32-bit emulated (WoW)
SET _BIT_Is32=0
SET _BIT_Is64=0
SET _BIT_IsWOW=1

SET _BIT_PrgFiles_32=%ProgramFiles%
SET _BIT_PrgFiles_64=%ProgramW6432%
SET _BIT_PrgFiles_NATIVE=%_BIT_PrgFiles_64%

SET _BIT_CommonProg_32=%CommonProgramFiles%
SET _BIT_CommonProg_64=%CommonProgramW6432%
SET _BIT_CommonProg_NATIVE=%_BIT_CommonProg_64%

SET _BIT_SYSTEM_32=%SystemRoot%\SysWOW64
SET _BIT_SYSTEM_64=%SystemRoot%\system32
SET _BIT_SYSTEM_NATIVE=%SystemRoot%\sysnative
GOTO ENDE


:x64_Native
SET _BIT_Type=64-bit native
SET _BIT_Is32=0
SET _BIT_Is64=1
SET _BIT_IsWOW=0

SET _BIT_PrgFiles_32=%ProgramFiles(x86)%
SET _BIT_PrgFiles_64=%ProgramFiles%
SET _BIT_PrgFiles_NATIVE=%_BIT_PrgFiles_64%

SET _BIT_CommonProg_32=%CommonProgramFiles(x86)%
SET _BIT_CommonProg_64=%CommonProgramFiles%
SET _BIT_CommonProg_NATIVE=%_BIT_CommonProg_64%

SET _BIT_SYSTEM_32=%SystemRoot%\SysWOW64
SET _BIT_SYSTEM_64=%SystemRoot%\system32
SET _BIT_SYSTEM_NATIVE=%_BIT_SYSTEM_64%
GOTO ENDE


:ENDE

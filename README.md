# BitnessHelper
A Windows batch file to get correct 32-, 64-bit and native system folder locations. See this [blog post](http://texhex.blogspot.com/2016/11/windows-bitness-helper.html) for a full description of the problem.  

## How to use ##

Just download ``BitnessHelper.cmd``, put it in the same path as the batch file you want to use it from and add the following line:
```batch
call "%~dp0BitnessHelper.cmd"
```

Once done, you can access the ``_BIT_xxx`` environment variables:
```batch
_BIT_CommonProg_32=C:\Program Files (x86)\Common Files
_BIT_CommonProg_64=C:\Program Files\Common Files
_BIT_CommonProg_NATIVE=C:\Program Files\Common Files
_BIT_Is32=0
_BIT_Is64=0
_BIT_IsWOW=1
_BIT_PrgFiles_32=C:\Program Files (x86)
_BIT_PrgFiles_64=C:\Program Files
_BIT_PrgFiles_NATIVE=C:\Program Files
_BIT_SYSTEM_32=C:\WINDOWS\SysWOW64
_BIT_SYSTEM_64=C:\WINDOWS\system32
_BIT_SYSTEM_NATIVE=C:\WINDOWS\sysnative
_BIT_Type=32-bit emulated (WoW)
```

You can use those variables as you would do with any other variables. For example, if you want to execute a PowerShell script using the native PowerShell.exe (32-bit on a 32-bit machine, 64-bit on a 64-bit machine), the entire batch file would like this:

```batch
REM This will provide the _BIT_xxx variables
call "%~dp0BitnessHelper.cmd"

REM This will work in 32-bit, 64-bit or when running as WOW
"%_BIT_SYSTEM_NATIVE%\WindowsPowerShell\v1.0\powershell.exe" -ExecutionPolicy Bypass -File "C:\MyScript.ps1"
```


## Contributions
Any constructive contribution is very welcome! If you encounter a bug or have an addition, please create a [new issue](https://github.com/texhex/BitnessHelper/issues/new).

## License
Copyright © 2010-2016 [Michael Hex](http://www.texhex.info/). Licensed under the **Apache 2 License**. For details, please see LICENSE.txt.
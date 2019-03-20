:dirname file varName
:: call :dirname "%filePath%" xxx
    setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
    SET _dir=%~dp1
    SET _dir=%_dir:~0,-1%
    endlocal & set %2=%_dir%
goto :EOF

:basename file varName
:: call :basename "%filePath%" xxx
    setlocal ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
    SET _file=%~nx1
    endlocal & set %2=%_file%
goto :EOF

@echo off
set day=%1

if "%day%"=="" (
    echo Uso: newday.bat day-04
    pause
    exit /b
)

if exist "%day%" (
    echo A pasta %day% ja existe. Nenhuma acao foi tomada.
) else (
    xcopy template %day% /E /I >nul
    echo A pasta %day% foi criada com base no template.
)

pause

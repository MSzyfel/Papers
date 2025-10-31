@echo off
setlocal enabledelayedexpansion

:: Sprawdzenie czy istnieje main.tex
IF NOT EXIST main.tex (
    echo Plik main.tex nie istnieje w tym katalogu!
    exit /b
)

:loop
    echo.
    echo ==============================
    echo Kompilacja LuaLaTeX (1/4)...
    lualatex -interaction=nonstopmode main.tex

    echo Uruchamianie Biber (2/4)...
    biber main

    echo Kompilacja LuaLaTeX (2/4)...
    lualatex -interaction=nonstopmode main.tex

    echo Kompilacja LuaLaTeX (3/4)...
    lualatex -interaction=nonstopmode main.tex

    echo Kompilacja zakonczona.
    echo ==============================
    echo.

    :: Sprawdź czy user cos kliknął
    choice /c CQ /n /t 0 /d C >nul
    if errorlevel 2 (
        echo Wykryto zadanie zamkniecia. Koniec.
        exit /b
    )

goto loop

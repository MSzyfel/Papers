@echo off
IF NOT EXIST main.tex (
    echo Plik main.tex nie istnieje w tym katalogu!
    exit /b
)

echo Kompilacja LuaLaTeX (1/4)...
lualatex -interaction=nonstopmode main.tex

echo Uruchamianie Biber (2/4)...
biber main

echo Kompilacja LuaLaTeX (2/4)...
lualatex -interaction=nonstopmode main.tex

echo Kompilacja LuaLaTeX (3/4)...
lualatex -interaction=nonstopmode main.tex

echo Kompilacja zakonczona.

@echo off
TITLE Bienvenid@ %USERNAME%
MODE con:cols=80 lines=30

:: Menu
:start
SET var=0
cls
echo ------------------------------------------
echo. Fecha: %DATE% Hora: %TIME%
echo ------------------------------------------
echo.
echo. 1 - Open Console          6 - npm create vite@latest
echo.
echo. 2 - Start _ run dev      
echo.
echo. 3 - Start _ build
echo.
echo. 4 - Start _ preview
echo.
echo. 5 - Start _ deploy
echo.
echo. 0 - Close Console
echo.
echo ------------------------------------------
echo.

SET /p var=_ Select an option: 
echo.

if "%var%"=="1" goto open
if "%var%"=="2" goto opt2
if "%var%"=="3" goto opt3
if "%var%"=="4" goto opt4
if "%var%"=="5" goto opt5
if "%var%"=="0" goto close

echo.
echo. ... the selected option is not valid.
echo.

pause
goto:start
:: ---------------------------
:: Opcion - 1 - Open > Consola
:open

start cmd

goto:start
:: ----------------------------
:: Opcion - 2 - Start > run dev
:opt2

start npm run dev

start http://127.0.0.1:5173

goto:start
:: ---------------------------
:: Opcion - 3 - Start > build
:opt3

start npm run build

goto:start
:: -----------------------------
:: Opcion - 4 - Start > preview
:opt4

start npm run preview

start http://127.0.0.1:4173

goto:start
:: ----------------------------
:: Opcion - 5 - Start > deploy
:opt5

start npm run deploy

start https://sandor29.github.io/

goto:start
:: ----------------------------
:: Opcion - 0 - Close > Console

:close
@cls&exit
::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFDZVXg+JJWWGIroL5uT07u6UnmwQROctd5zIl5WDMO8f6wjHeJJjhC8M1sIPA3s=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDZVXg+JJWWGIroL5uT07u6UnmwIQO0rbYHV07qJbuUL7yU=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:: Verifica se o script está sendo executado como administrador
openfiles >nul 2>&1 || (
    echo Solicitando privilégios administrativos...
    powershell -Command "Start-Process cmd -ArgumentList '/c ""%~f0"" %*' -Verb RunAs"
    exit /b
)

:MENU
cls
echo     Make by @1markkyn
echo ===============================
echo  Configuracao do TCP Autotuning
echo ===============================
echo 1. Ativar Auto-Tuning (Disabled)
echo 2. Desativar Auto-Tuning (Normal)
echo 3. Sair
echo ===============================
set /p option=Escolha uma opcao (1, 2 ou 3): 

if "%option%"=="1" goto AUTOTUNING_NORMAL
if "%option%"=="2" goto AUTOTUNING_DISABLED
if "%option%"=="3" exit /b
goto MENU

:AUTOTUNING_NORMAL
echo Configurando Auto-Tuning para Normal...
netsh int tcp set global autotuninglevel=normal
echo Configuracao completa. Pressione qualquer tecla para voltar ao menu.
pause >nul
goto MENU

:AUTOTUNING_DISABLED
echo Configurando Auto-Tuning para Disabled...
netsh int tcp set global autotuninglevel=disabled
echo Configuracao completa. Pressione qualquer tecla para voltar ao menu.
pause >nul
goto MENU

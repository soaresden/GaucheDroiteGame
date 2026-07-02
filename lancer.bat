@echo off
title Gauche ou Droite - Serveur local
cd /d "%~dp0"

echo ================================================
echo   GAUCHE OU DROITE ? - http://localhost:8000
echo   Fermer cette fenetre = arreter le serveur
echo ================================================

rem Ouvre le navigateur (petite pause pour laisser le serveur demarrer)
start "" cmd /c "timeout /t 1 /nobreak >nul & start http://localhost:8000"

rem Lance le serveur : python, sinon py, sinon message d'erreur
python -m http.server 8000 2>nul
if errorlevel 1 py -m http.server 8000 2>nul
if errorlevel 1 (
  echo.
  echo [ERREUR] Python introuvable. Installez-le depuis https://www.python.org/
  pause
)

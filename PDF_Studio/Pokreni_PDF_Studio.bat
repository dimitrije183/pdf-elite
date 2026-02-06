@echo off
title PDF ELITE STUDIO - Setup
color 0b
echo ============================================
echo      AUTOMATSKI SETUP I POKRETANJE
echo ============================================

:: Pokusaj pronalaska Pythona ako pip ne radi
set PY_CMD=python
py --version >nul 2>&1 && set PY_CMD=py

echo [1/2] Instalacija neophodnih modula (Flask, Plumber, Docx)...
%PY_CMD% -m pip install flask flask-sqlalchemy pdfplumber pypdf python-docx --quiet

echo.
echo [2/2] Pokretanje servera na http://127.0.0.1:1010
start http://127.0.0.1:1010

%PY_CMD% app.py
pause
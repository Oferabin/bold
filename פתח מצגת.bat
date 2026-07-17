@echo off
chcp 65001 >nul
title BOLD - מצגת יכולות
cd /d "%~dp0"

echo.
echo   ============================================
echo     BOLD - פותח את המצגת...
echo   ============================================
echo.
echo   הדפדפן ייפתח בעוד רגע.
echo   הסרטונים ינגנו כאן, מעל המצגת.
echo.
echo   כדי לסגור: פשוט סגור את החלון הזה.
echo.

REM YouTube refuses to embed from a double-clicked file:// page (error 153).
REM Serving the folder over http gives the page a real origin, so the
REM in-page lightbox plays normally. -o opens the browser, -c-1 disables cache.
npx --yes http-server -p 8899 -o -c-1

@echo off
chcp 65001 >nul
echo [*] Отключение автозапуска...

reg delete "HKCUSoftwareMicrosoftWindowsCurrentVersionRun" /v "AntigravityManager" /f >nul 2>&1
reg delete "HKCUSoftwareMicrosoftWindowsCurrentVersionRun" /v "AntigravityClaudeBridge" /f >nul 2>&1

echo.
echo ========================================================
echo  [УСПЕХ] Автозапуск успешно удален из автозагрузки Windows!
echo ========================================================
echo.
pause

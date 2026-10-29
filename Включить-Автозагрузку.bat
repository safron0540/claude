@echo off
chcp 65001 >nul
echo [*] Настройка автозапуска Antigravity и моста Claude...

reg add "HKCUSoftwareMicrosoftWindowsCurrentVersionRun" /v "AntigravityManager" /t REG_SZ /d "\"%~dp0Antigravity-Manager.exe\"" /f >nul
reg add "HKCUSoftwareMicrosoftWindowsCurrentVersionRun" /v "AntigravityClaudeBridge" /t REG_SZ /d "\"%~dp0claude-bridge.exe\"" /f >nul

echo.
echo ========================================================
echo  [УСПЕХ] Автозапуск успешно добавлен в реестр Windows!
echo  Теперь при включении ПК сервисы запустятся автоматически.
echo ========================================================
echo.
pause

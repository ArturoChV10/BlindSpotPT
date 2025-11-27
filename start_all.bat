@echo off
echo Iniciando servidores de Blind Spot...

REM Navegar al directorio del backend y iniciar servidores
cd /d "D:\chava\Documents\coding\BlindSpotPT\React\backend"
echo Iniciando server.py...
start "Server" python server.py

timeout /t 2 /nobreak >nul

echo Iniciando camera_server.py...
start "Camera Server" python camera_server.py

timeout /t 2 /nobreak >nul

echo Iniciando chatbot_server.py...
start "Chatbot Server" python chatbot_server.py

timeout /t 2 /nobreak >nul

REM Navegar al directorio de React y iniciar Expo
cd /d "D:\chava\Documents\coding\BlindSpotPT\React"
echo Iniciando Expo...
start "Expo" cmd /k "npx expo start"

echo Todos los servidores se estan iniciando...
echo - server.py
echo - camera_server.py  
echo - chatbot_server.py
echo - Expo
echo.
echo Espera a que Expo cargue completamente...
pause
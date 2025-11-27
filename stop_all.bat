@echo off
echo Deteniendo todos los servidores de Blind Spot...

echo Cerrando servidor principal...
taskkill /f /fi "WindowTitle eq Server" >nul 2>&1

echo Cerrando servidor de camara...
taskkill /f /fi "WindowTitle eq Camera Server" >nul 2>&1

echo Cerrando servidor del chatbot...
taskkill /f /fi "WindowTitle eq Chatbot Server" >nul 2>&1

echo Cerrando Expo...
taskkill /f /fi "WindowTitle eq Expo" >nul 2>&1

echo Limpiando procesos Node y Python especificos...
taskkill /f /im node.exe >nul 2>&1
taskkill /f /im python.exe >nul 2>&1

echo Todos los servidores han sido detenidos.
pause
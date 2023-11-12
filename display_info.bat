@echo off
setlocal enabledelayedexpansion

:: Создаем временный файл для хранения вывода команды nvidia-smi
set TEMP_FILE=%TEMP%\gpu_name.txt
nvidia-smi --query-gpu=gpu_name --format=csv > "!TEMP_FILE!"

chcp 65001 >nul
echo.
echo  ( \   .-'''-.  A.-.A
echo   \.\/        \/ , , \
echo    \.  . sDi  =; ^>t^< /=
echo     \   \ ...  . ,^^
echo     / / /    ^| ^| ^|
echo     ⦦,),)     ⦦,),)

:: Читаем имя GPU из временного файла и выводим после ASCII-арта
for /f "usebackq skip=1 tokens=*" %%i in ("!TEMP_FILE!") do (
  set "GPU_NAME=%%i"
)

:: Выводим рамку с именем GPU
echo ╔═════════════════════════╗
echo ║ !GPU_NAME! ║
echo ╚═════════════════════════╝

:: Удаляем временный файл
del "!TEMP_FILE!"

endlocal

@echo off
setlocal
set "ruta_de_carpeta=C:\Users\ALUMNO\Desktop\1a"
set "archivos_imborrables=1erbash.bat algocorto.txt"
cd /d "%ruta_de_carpeta%"

for %%i in (*) do (
    set "eliminar=true"
    for %%j in (%archivos_imborrables%) do (
        if "%%i"=="%%j" (
            set "eliminar=false"
        )
    )
    if "%eliminar%"=="true" (
        echo Eliminando: %%i
        del "%%i"
    ) else (
        echo NO Eliminando: %%i
    )
)

endlocal

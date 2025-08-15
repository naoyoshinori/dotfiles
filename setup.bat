@ECHO OFF

CD /D "%~dp0"

IF EXIST "%USERPROFILE%\.gitconfig" (
    CHOICE /C YN /M "The file .gitconfig already exists. Do you want to delete it?"
    IF ERRORLEVEL 2 (
        ECHO Aborting setup.
        EXIT /B
    ) ELSE (
        DEL "%USERPROFILE%\.gitconfig"
    )
)
MKLINK "%USERPROFILE%\.gitconfig" "%CD%\config\git\.gitconfig"

IF EXIST "%USERPROFILE%\.gemini" (
    CHOICE /C YN /M "The directory .gemini already exists. Do you want to delete it?"
    IF ERRORLEVEL 2 (
        ECHO Aborting setup.
        EXIT /B
    ) ELSE (
        RMDIR /S /Q "%USERPROFILE%\.gemini"
    )
)
MKLINK /D "%USERPROFILE%\.gemini" "%CD%\config\gemini"

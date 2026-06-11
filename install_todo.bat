@echo off

echo 📝 Installing To-Do List Application...
echo.

REM Create virtual environment
echo Creating virtual environment...
python -m venv todo_venv

REM Activate virtual environment
echo Activating virtual environment...
call todo_venv\Scripts\activate.bat

REM Upgrade pip
echo Upgrading pip...
python -m pip install --upgrade pip setuptools wheel

REM Install dependencies
echo Installing dependencies...
pip install -r todo_requirements.txt

REM Install the app
echo Installing To-Do List app...
pip install -e .

REM Create data directory
echo Setting up data directory...
if not exist "%USERPROFILE%\.todo_app" mkdir "%USERPROFILE%\.todo_app"

echo.
echo ✅ Installation complete!
echo.
echo Usage:
echo   CLI:     todo --help
echo   Web:     python -m todo_app.web
echo.
pause
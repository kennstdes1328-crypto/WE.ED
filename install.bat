@echo off
echo 🎵 BEAT SYNC v3 - Installation
python -m venv venv
call venv\Scripts\activate.bat
pip install --upgrade pip
pip install -r requirements.txt
pip install -e .
if not exist clips mkdir clips
if not exist snd mkdir snd
if not exist output mkdir output
if not exist config mkdir config
echo ✅ Complete! Run: beat-sync --help
pause
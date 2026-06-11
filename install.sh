#!/bin/bash

echo "🎵 BEAT SYNC v3 - Installation"
python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install -r requirements.txt
pip install -e .
mkdir -p clips snd output config
echo "✅ Complete! Run: beat-sync --help"
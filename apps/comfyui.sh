#!/bin/bash

echo "🧩 Installing ComfyUI..."

cd ~
mkdir -p mysterious/apps
cd mysterious/apps

if [ -d "ComfyUI" ]; then
    echo "🔄 Updating ComfyUI..."
    cd ComfyUI && git pull
else
    git clone https://github.com/comfyanonymous/ComfyUI.git
    cd ComfyUI
fi

python3 -m venv venv
source venv/bin/activate

pip install -r requirements.txt

echo "🚀 Launching ComfyUI..."
python3 main.py

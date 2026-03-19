#!/bin/bash

echo "🧠 Installing InvokeAI..."

cd ~
mkdir -p mysterious/apps
cd mysterious/apps

if [ -d "InvokeAI" ]; then
    echo "🔄 Updating..."
    cd InvokeAI && git pull
else
    git clone https://github.com/invoke-ai/InvokeAI.git
    cd InvokeAI
fi

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -e .

invokeai-configure

echo "🚀 Launching..."
invokeai-web

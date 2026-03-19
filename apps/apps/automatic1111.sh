#!/bin/bash

echo "🎨 Installing AUTOMATIC1111..."

cd ~
mkdir -p mysterious/apps
cd mysterious/apps

if [ -d "stable-diffusion-webui" ]; then
    echo "🔄 Updating..."
    cd stable-diffusion-webui && git pull
else
    git clone https://github.com/AUTOMATIC1111/stable-diffusion-webui.git
    cd stable-diffusion-webui
fi

echo "🚀 Launching..."
bash webui.sh

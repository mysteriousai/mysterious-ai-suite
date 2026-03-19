#!/bin/bash

echo "🔧 Installing base dependencies..."

sudo apt update
sudo apt install -y git python3 python3-venv python3-pip wget

echo "✅ Base dependencies installed"

#!/bin/bash

clear
echo "🔮 Mysterious AI Suite"
echo "----------------------------------"

run_app() {
    if [ -f "apps/$1.sh" ]; then
        bash "apps/$1.sh"
    else
        echo "❌ Missing installer: $1"
    fi
}

# Base dependencies
bash apps/_base.sh

while true; do
    echo ""
    echo "Select AI App to Install:"
    echo "1) ComfyUI"
    echo "2) AUTOMATIC1111"
    echo "3) InvokeAI"
    echo "4) Install All"
    echo "5) Exit"

    read -p "Enter choice: " choice

    case $choice in
        1) run_app "comfyui" ;;
        2) run_app "automatic1111" ;;
        3) run_app "invokeai" ;;
        4)
            run_app "comfyui"
            run_app "automatic1111"
            run_app "invokeai"
            ;;
        5) exit 0 ;;
        *) echo "Invalid option" ;;
    esac
done

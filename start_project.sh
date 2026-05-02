#!/bin/bash

# 1. 定義路徑
PROJECT_DIR="$(pwd)"
# 你的核心資料（包含 .venv, models, custom_nodes 等）
CORE_DIR="/Users/huanchen/Documents/ComfyUI/ComfyUI-Kernel"
# macOS 桌面版 ComfyUI 的主程式路徑
COMFY_APP_MAIN="/Applications/ComfyUI.app/Contents/Resources/ComfyUI/main.py"

# 2. 檢查虛擬環境是否存在
if [ ! -d "$CORE_DIR/.venv" ]; then
    echo "錯誤：找不到 ComfyUI 核心環境 ($CORE_DIR/.venv)！請確認核心路徑是否正確。"
    exit 1
fi

# 3. 啟動虛擬環境 (Kernel)
source "$CORE_DIR/.venv/bin/activate"

# 4. 啟動 ComfyUI 引擎，但將資料流指向目前專案
echo "=========================================="
echo "🚀 啟動專案：$PROJECT_DIR"
echo "📦 使用核心：$CORE_DIR"
echo "=========================================="

python "$COMFY_APP_MAIN" \
  --output-directory "$PROJECT_DIR/output" \
  --input-directory "$PROJECT_DIR/input" \
  --user-directory "$PROJECT_DIR/user" \
  --temp-directory "$PROJECT_DIR/temp" \
  --database-url "sqlite:///$PROJECT_DIR/user/comfyui.db"

# 註：這樣做的話，這個專案產生的圖和設定都會存在專案的資料夾裡，不會污染核心。

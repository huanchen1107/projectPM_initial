#!/bin/bash

echo "🚀 正在啟動專案管理腳手架..."

if [ -f "project_initial.md" ]; then
    echo "--------------------------------------------------"
    echo "🤖 嗨，AI 助手！請閱讀以下 project_initial.md 中的指令並立即執行初始化："
    echo ""
    cat project_initial.md
    echo ""
    echo "--------------------------------------------------"
    echo "請 AI 助手確認收到指令並開始執行。"
else
    echo "❌ 找不到 project_initial.md，請確認檔案是否存在。"
fi

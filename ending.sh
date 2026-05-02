#!/bin/bash
echo "🛑 準備結束目前的工作階段..."
echo ""

# 1. 驗證與同步專案核心文件 (Verify/Synchronize Core Files)
echo "🔍 正在驗證專案腳本完整性..."
TEMPLATE_DIR="/Users/huanchen/Documents/ComfyUI/Project_Template"
PROJECT_DIR="$(pwd)"

# 檢查是否在專案根目錄
if [ ! -f "start_project.sh" ]; then
    echo "⚠️ 警告：目前似乎不在專案根目錄，跳過腳本同步。"
else
    # 同步核心腳本與配置文件
    for file in "reconstruct_dialog.py" "extra_model_paths.yaml" "start_project.sh" "startup.sh" ".gitignore"; do
        if [ -f "$TEMPLATE_DIR/$file" ]; then
            if ! cmp -s "$PROJECT_DIR/$file" "$TEMPLATE_DIR/$file" 2>/dev/null; then
                echo "💡 偵測到模板更新：正在同步 $file..."
                cp "$TEMPLATE_DIR/$file" "$PROJECT_DIR/"
            fi
        fi
    done
fi

# 2. 提醒 AI 更新開發日誌
echo ""
echo "🤖 嗨，AI 助手！請確認你已經將本次對話中「所有有意義的除錯、優化與結論」寫入當日的開發日誌中。"
echo "（如果還沒寫，請立刻更新檔案再繼續）"
echo ""

# 3. 讀取 Log 並更新對話紀錄
echo "🤖 正在讀取系統底層 Log 並更新 user/dialog.md (包含所有歷史對話)..."
python3 reconstruct_dialog.py 2>/dev/null || echo "⚠️ reconstruct_dialog.py 執行失敗"

echo ""
echo "🤖 嗨，AI 助手！請檢查以下事項："
echo "1. 今天的進度是否已寫入開發日誌？"
echo "2. dialog.md 是否已自動更新完畢？"
echo ""
read -p "請確認以上事項皆已完成？ (按 Enter 繼續推送至 GitHub)"

# 4. Git 備份
echo "📦 正在將所有檔案推送到 GitHub..."
git add .
git commit -m "Auto-commit: 結束工作階段並同步模板腳本 $(date +%Y-%m-%d)"
git push origin main || echo "⚠️ 推送失敗：可能尚未設定 git remote，請確認。"
echo "✅ 完成備份與同步！"

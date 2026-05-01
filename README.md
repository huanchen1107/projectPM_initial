# projectPM_initial — 專案管理腳手架 (Scaffolding)

這是一個專為 AI 協作開發設計的「專案管理腳手架」。透過這套工具，你可以讓 AI 助手自動接管所有瑣碎的行政與管理工作（如 Git 同步、日誌撰寫、教學歸檔、對話備份），讓你專注於核心技術開發。

---

## 🎯 核心目的 (Core Purpose)
在與 AI 助手（如 Antigravity, Claude, ChatGPT）長期的專案合作中，對話紀錄容易因長度限制而遺失，且開發過程中的決策往往缺乏系統性紀錄。本專案旨在解決：
1.  **知識碎片化**：透過自動化的 `Tutorial` 與 `開發日誌` 將知識系統化。
2.  **記憶遺失**：利用底層 Log 還原技術，確保所有對話 100% 歸檔。
3.  **流程標準化**：無論開啟什麼新專案，都能一鍵建立專業的開發環境。

---

## 🛠 功能特點 (Features)
*   **🤖 AI 運作大腦 (`project_initial.md`)**：
    包含一組經過優化的「大師指令 (Master Prompt)」，能引導 AI 自動建立 Repo、腳本與文件系統。
*   **📜 全自動對話備份 (`reconstruct_dialog.py`)**：
    自動撈取系統底層的 `overview.txt`，確保即使對話被壓縮，也能備份從第一句開始的所有歷史紀錄。
*   **🚀 一鍵啟動引導 (`startup.sh`)**：
    讓 AI 助手自動讀取指令並進入管理模式。
*   **📦 自動化閉環 (`ending.sh`)**：
    在收工前自動備份對話、提醒更新日誌、並同步推送到 GitHub。

---

## 🚀 如何使用 (How to use)

### 1. 建立新專案
當你想開始一個新計畫（例如 `my_new_ai`）時：
```bash
git clone https://github.com/huanchen1107/projectPM_initial.git my_new_ai
```

### 2. 呼叫 AI 啟動初始化
進入資料夾後，對你的 AI 助手說：
> **「請執行 `startup.sh` 並開始初始化專案。」**

### 3. AI 會自動執行以下步驟
1.  詢問你的新 GitHub 網址並進行關聯。
2.  建立當天的 `YYYY.MM.DD開發日誌.md`。
3.  建立 `/Tutorial` 目錄並開始記錄第一項技術教學。
4.  將原本的 `startup.sh` 與 `ending.sh` 轉換為適用於該專案的版本。

---

## 📁 建立歷程 (Initialization Steps)
本儲存庫是根據以下邏輯建立的：
1.  **環境準備**：建立專屬管理資料夾並初始化 Git。
2.  **核心模板**：將「專案管理大師指令」存入 `project_initial.md` 作為 AI 的執行標準。
3.  **自動化工具包**：放入通用版的 `reconstruct_dialog.py` 與啟動腳本。
4.  **GitHub 連結**：同步至 `huanchen1107/projectPM_initial`。

---

## 💡 經驗總結
這相當於為你的每個專案都請了一位專屬的 **「技術專案經理 (Technical PM)」**。你只需要下達指令，AI 就會一邊開發一邊幫你寫好所有的說明書與紀錄。

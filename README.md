# projectPM_initial

這是一個「專案管理腳手架 (Scaffolding)」。旨在讓你開新專案時，能快速建立起專業的開發日誌、教學文件與 GitHub 版本控制流程。

## 🚀 如何使用 (How to use)

1.  **Clone 本儲存庫**：
    ```bash
    git clone https://github.com/huanchen1107/projectPM_initial.git 新專案名稱
    ```
2.  **啟動初始化**：
    進入資料夾後，對 AI 助手說：
    > 「請執行 `startup.sh` 並開始初始化專案。」

3.  **自動化流程**：
    *   AI 會自動詢問你的新 GitHub 網址並進行關聯。
    *   AI 會建立 `startup.sh` 與 `ending.sh` 的工作流版本。
    *   每次收工前執行 `ending.sh`（或對 AI 說執行 export），系統會自動備份完整對話與日誌。

## 📁 核心檔案
*   `project_initial.md`: 給 AI 的初始化核心指令。
*   `reconstruct_dialog.py`: 通用的對話 Log 還原腳本。
*   `startup.sh`: 啟動引導腳本。

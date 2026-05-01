# projectPM_initial — 專案管理腳手架 (Scaffolding)

這是一個專為 AI 協作開發設計的「專案管理腳手架」。它的核心理念是：**讓 AI 助手自動接管行政與管理工作，讓人類開發者專注於創意與核心技術。**

透過這套工具，你可以一鍵啟動一個具備專業版本控制、開發日誌、技術教學與對話備份功能的開發環境。

---

## 🎯 核心目的 (Core Purpose)
在長期的 AI 協作中，我們常遇到：
1.  **記憶遺失**：對話過長導致 AI 忘記初衷或關鍵決策。
2.  **知識碎片化**：解決問題的技巧散落在對話中，沒有沉澱。
3.  **環境混亂**：每個專案的管理方式不同，難以快速上手。

**本儲存庫旨在透過「指令 (Master Prompt)」與「腳本」建立一套標準化的 AI 專案管理模式。**

---

## 🛠 功能特點 (Features)

*   **🧠 AI 運作大腦 (`project_initial.md`)**
    包含一個強大的「大師指令」，引導 AI 自動建立 Repo、設定遠端 Git、並建立專業的文件系統。
*   **📜 完美記憶備份 (`reconstruct_dialog.py`)**
    自動讀取系統底層 Log (`overview.txt`)，確保所有原始對話 100% 完整備份到 `dialog.md`，不再受 Context Window 限制。
*   **🚀 一鍵啟動 (`startup.sh`)**
    引導 AI 助手自動讀取專案規則並立刻進入「專案管理模式」。
*   **📦 自動化閉環 (`ending.sh`)**
    在收工前一鍵完成：對話還原、日誌更新、教學寫作、Git 推送。

---

## 🚀 如何使用？ (Quick Start)

### Step 1: 建立新專案
當你想開啟任何新計畫時，直接 Clone 本腳手架：
```bash
git clone https://github.com/huanchen1107/projectPM_initial.git 新專案名稱
```

### Step 2: 啟動初始化
進入資料夾後，直接在 AI 對話框輸入：
> **「我已經 Clone 好 PM 模板了，請執行 `startup.sh` 並開始初始化專案。」**

### Step 3: AI 自動化管理
AI 助手執行腳本後，會自動執行以下任務：
1.  **關聯 GitHub**：詢問新專案的網址並完成 Git Remote 設定。
2.  **建立日誌**：建立當天的 `YYYY.MM.DD開發日誌.md`。
3.  **啟動教學**：建立 `/Tutorial` 目錄並開始記錄技術細節。
4.  **轉換工具**：將腳手架腳本升級為專案專屬的管理工具。

---

## 📁 建立歷程與步驟 (Scaffolding Logic)
本儲存庫是根據以下技術路徑建立的：
1.  **環境準備**：建立專屬資料夾並初始化 Git 環境。
2.  **核心模板**：將完善後的「專案管理大師指令」存入 `project_initial.md`。
3.  **啟動腳本**：撰寫偵測新環境並打印指令的 `startup.sh`。
4.  **工具包**：放入具備「自動撈取底層 Log」能力的 `reconstruct_dialog.py`。
5.  **GitHub 同步**：關聯至 `huanchen1107/projectPM_initial`。

---

## 💡 經驗總結
這相當於為你的每個專案都請了一位專屬的 **「技術專案經理 (Technical PM)」**。你只需要下達指令，AI 就會一邊開發一邊幫你寫好所有的說明書、日誌與對話紀錄。

---

### 📎 相關連結
*   **GitHub**: [https://github.com/huanchen1107/projectPM_initial](https://github.com/huanchen1107/projectPM_initial)

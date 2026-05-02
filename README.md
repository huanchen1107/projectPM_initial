# 專案名稱：projectPM_initial

這是一個輕量化的 ComfyUI 專案工作區。
**本資料夾不包含** ComfyUI 核心程式碼與龐大的模型環境，只保存專案專屬的：
- 工作流 (`workflows/`)
- 輸入素材 (`input/`)
- 產出檔案 (`output/`)
- 客製化腳本與筆記

## 🔗 專案環境依賴與重建指南 (Environment & Robustness)

如果你在**另一台機器**上 Clone 了這個 GitHub 專案，或是遺失了原有的本機環境，請依照以下步驟重建一模一樣的核心引擎 (Kernel)：

### 1. 安裝 ComfyUI 引擎與前端
本專案預設依賴 macOS 版本的 ComfyUI 或標準的 Python 環境。
- **macOS Desktop App**: 請前往 [ComfyUI Releases](https://github.com/comfyanonymous/ComfyUI/releases) 下載並放置於 `/Applications/ComfyUI.app`。
- **確保前端套件已安裝**：如果在終端機啟動時遇到 `comfyui-frontend-package is not installed` 的錯誤，請在你的虛擬環境下執行：
  ```bash
  pip install comfyui-frontend-package
  ```

### 2. 建立 ComfyUI-Kernel 共用資源庫
請確認你在本機的預設路徑 `/Users/huanchen/Documents/ComfyUI/ComfyUI-Kernel` (或你自行修改的其他路徑) 擁有以下結構：
```text
ComfyUI-Kernel/
  ├── models/
  ├── custom_nodes/
  └── .venv/
```

### 3. 安裝必備的 Custom Nodes (套件)
> 💡 **強烈建議**：先在 Kernel 中安裝 [ComfyUI-Manager](https://github.com/ltdrdata/ComfyUI-Manager)，這將能幫你自動補全大部分遺失的節點！
> `cd ComfyUI-Kernel/custom_nodes && git clone https://github.com/ltdrdata/ComfyUI-Manager.git`

**本專案額外需要的手動節點：**
- [ ] 節點A: [附上 GitHub 連結] (用途說明)
- [ ] 節點B: [附上 GitHub 連結] (用途說明)
*(請在開發時隨時補上你用到的重要節點)*

### 4. 下載必備的大型模型 (Models/LoRAs)
請將以下模型下載並放置於 `ComfyUI-Kernel/models/` 的對應資料夾中：
- [ ] Checkpoint: [Model Name](https://civitai.com/...) -> 放至 `models/checkpoints/`
- [ ] LoRA: [LoRA Name](https://civitai.com/...) -> 放至 `models/loras/`
- [ ] ControlNet: [ControlNet Name](https://huggingface.co/...) -> 放至 `models/controlnet/`

---

## 🚀 啟動本專案

當你的 Kernel 準備好後，在終端機中，於本專案目錄下執行：

```bash
./start_project.sh
```

啟動後，ComfyUI 會將本專案的 `input`, `output`, `user`, `temp` 掛載進去。你的所有進度與網頁暫存都會保留在這個專案本身的資料夾中，完全不干擾本機的其他專案。

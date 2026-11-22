Apne hi computer pe chalao **futuristic AI voice assistant with holographic HUD** — voice conversation, real-time computer tools, terminal, code editor aur complete desktop automation.  
Free hai, 100% open-source hai, aur aapka data aapke hi PC pe rehta hai.

---

## Apne PC pe kaise chalaye (3 steps)

### **1. Download karo**
Repository ko clone karo ya zip download karke extract karo:
```bash
git clone https://github.com/shahtirth1450-netizen/JARVIS.git
cd JARVIS
```

### **2. Setup run karo (1-Click)**
- **Windows users:** Folder mein diye gaye **`build_exe.bat`** ya **`setup.py`** par double click karo. Ye Python packages aur zaroori browser engines khud install kar dega.
- **Mac / Linux users:** Terminal mein `python3 setup.py` chalao.

### **3. Start karo**
- **Windows:** Seedha **`run.bat`** par double click karo (ya `python main.py`).
- **Mac / Linux:** Terminal mein `python3 main.py` run karo.

---

### AI key daalo (free, 2 minute)
JARVIS Gemini Live voice aur AI brain use karta hai. Key bilkul free hai:
1. [Google AI Studio](https://aistudio.google.com/) pe jao aur Google account se login karo.
2. **Get API key** par click karke nayi key generate karo aur copy kar lo.
3. JARVIS pehli baar launch hote hi setup screen pe key poochhega — wahan paste kar do. (Settings se kabhi bhi change kar sakte ho).

---

### Kuch problem aaye toh

| Problem | Kya karein |
| :--- | :--- |
| **`python` command nahi mil rahi** | Python 3.11 ya 3.12 install karo [python.org](https://www.python.org/) se aur install karte waqt **"Add Python to PATH"** checkbox zaroor tick karo. |
| **Microphone / Audio detect nahi ho raha** | Windows Sound Settings mein apna default input/output mic check karo. JARVIS UI mein **SETUP ➔ AUDIO** se direct mic select kar sakte ho. |
| **Browser control / Playwright error** | Terminal mein `python -m playwright install chromium` run karo. |
| **Module missing error** | Terminal mein `pip install -r requirements.txt` chalao. |

> **System requirements:** Windows 10/11, macOS, ya Linux. 4 GB RAM minimum (8 GB recommended). Aapka conversation data aur API keys aapke computer pe locally store hoti hain, kisi third-party server pe nahi jati.

---

## For developers

JARVIS is a native desktop artificial intelligence assistant featuring an interactive holographic HUD, real-time Gemini Live audio streaming, workspace-aware code editing, embedded terminal emulation, and customizable computer control automation.

---

## What it does

- **Real-time Voice & Vision:** Speak directly with low-latency Gemini Live, attach screenshots, analyze documents, and watch live HUD waveform articulation.
- **Holographic Cyber HUD:** Fully interactive 3D particle reactor core, audio-reactive waveform, matrix streams, and customizable neon accent themes.
- **Computer & Browser Tools:** Optional, permission-gated mouse and keyboard automation, screen reading, and headless/headful browser automation.
- **Developer Workspace:** Integrated file tree browser, code editor, and tabbed terminal sessions scoped to your project root.
- **Modular Plugin Architecture:** Drop-in plugins for Pomodoro timer, chat takeovers, Obsidian vaults, reminders, and custom tools.
- **Remote Web Dashboard:** Access system metrics, live audio, and chat remotely via mobile (iOS Safari / Android) over local Wi-Fi.

---

## Quick start

### Windows (CMD or PowerShell)
```powershell
# 1. Clone repository
git clone https://github.com/shahtirth1450-netizen/JARVIS.git
cd JARVIS

# 2. Setup virtual environment
python -m venv .venv
.\.venv\Scripts\activate

# 3. Install dependencies
python setup.py

# 4. Launch JARVIS
python main.py
```

### Linux (Ubuntu, Debian, Fedora, Arch)
```bash
# 1. Install system audio dependencies
sudo apt update && sudo apt install -y git python3 python3-pip python3-venv libasound2-dev libportaudio2

# 2. Clone and navigate
git clone https://github.com/shahtirth1450-netizen/JARVIS.git
cd JARVIS

# 3. Environment setup & run
python3 -m venv .venv
source .venv/bin/activate
python setup.py
python main.py
```

### macOS
```bash
git clone https://github.com/shahtirth1450-netizen/JARVIS.git
cd JARVIS
python3 -m venv .venv
source .venv/bin/activate
python setup.py
python main.py
```

### Mobile / iOS Remote Dashboard (iPhone / iPad)
1. Run JARVIS on your host PC.
2. Ensure your iPhone / iPad is connected to the same Wi-Fi network.
3. Open Safari and navigate to `http://<YOUR_PC_LOCAL_IP>:8000`.
4. Monitor system metrics and interact with JARVIS remotely.

---

## How to build standalone .EXE (Windows)

A pre-configured PyInstaller spec and Windows version information file are included.

To build the executable:
```cmd
:: Simply run the included builder
build_exe.bat
```
Or manually via CLI:
```cmd
pip install pyinstaller -r requirements.txt
pyinstaller --noconfirm --clean JARVIS.spec
```
The output executable will be generated at `dist/JARVIS/JARVIS.exe` with embedded icon, company branding, and version metadata.

---

## How it is built

| Directory / File | Description |
| :--- | :--- |
| `gui/` | Native PyQt6 desktop interface, cyber HUD canvas, reactive widgets, and styling tokens. |
| `core/` | Runtime paths, audio stream pipelines, Gemini Live client, update engine, and prompts. |
| `actions/` | Automated tools: computer control, browser navigation, screen capture, file processing, and system monitor. |
| `dashboard/` | Embedded FastAPI web dashboard server with static HTML/JS web client. |
| `plugins/` | Modular extension plugins (Pomodoro, Obsidian, chat takeover, reminders). |
| `providers/` | Pluggable STT, LLM, and TTS providers (Whisper, OpenAI, ElevenLabs, Piper). |
| `tests/` | Complete unittest suite covering UI, security policies, and audio devices. |

---

## Choose your AI Provider

JARVIS supports pluggable AI architectures:

| Provider | Purpose | Configuration Key |
| :--- | :--- | :--- |
| **Gemini Live** (Default) | Real-time speech-to-speech low latency | `GEMINI_API_KEY` (Google AI Studio) |
| **OpenAI** | GPT-4o / custom completion models | `OPENAI_API_KEY` |
| **Whisper** | Local / API speech-to-text | Local model or OpenAI API |
| **ElevenLabs** | Ultra-realistic synthetic voice output | `ELEVENLABS_API_KEY` |
| **Piper TTS** | Fast, local offline neural voice generation | Bundled local models |

---

## Tests

Execute the comprehensive test suite:
```bash
python -m unittest discover -s tests
```
All 153 test suites run with 100% pass rate.

---

## Security & Privacy

- **Local Storage:** All API credentials, chats, profiles, and logs remain strictly inside your machine's local user directory.
- **Permission Guard:** Computer control (keyboard, mouse, screen clicks) is gated behind explicit user permissions in the Controls drawer.
- **Sandboxed Execution:** Actions verify file paths and do not allow arbitrary destructive execution without user confirmation.

---

## Licence

Distributed under the [MIT](LICENSE) Licence. Made by black625.

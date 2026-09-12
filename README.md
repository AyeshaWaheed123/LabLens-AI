# 🩺 LabLens AI — AI-Powered Medical Lab Report Analysis & RAG Assistant

**LabLens AI** is an AI-powered medical lab report analysis platform designed to help users understand laboratory test reports in a simple, structured, and organized way.

---

## 🌟 Key Features

- 📄 **PDF Report Upload & Data Extraction**: Multi-page PDF text & table parsing using `pdfplumber` & `pypdf`.
- 🤖 **AI-Based Report Analysis & Normal/High/Low Detection**: Automated range classification and layperson explanations.
- 📋 **AI-Generated Doctor Brief**: 1-click copyable discussion points prepared specifically for medical consultations.
- 🔎 **RAG-Powered Medical Knowledge Assistant**: Grounded Q&A assistant backed by WHO clinical guidelines and citation sources.
- 📈 **Health Result Trends & History**: Historical parameter tracking over time and SQLite database persistence.
- ⚠️ **Safe Guidance**: Non-diagnostic disclaimers encouraging healthcare provider discussion.

---

## 👥 Team Division

| Role | Responsibility | Key Module Files |
| :--- | :--- | :--- |
| **Member 1 (Team Lead / AI Core)** | Gemini AI interpretation, prompts, Doctor Brief generation | `backend/app/core/` |
| **Member 2 (Report Processing)** | PDF upload, text cleaning, table extraction | `backend/app/parser/` |
| **Member 3 (RAG Developer)** | Medical reference indexing, RAG retrieval & citations | `backend/app/rag/` |
| **Member 4 (Analytics Developer)** | Historical trends, report comparison, SQLite DB | `backend/app/analytics/` |
| **Member 5 (UI Developer)** | Frontend Web UI, Tailwind dashboard, Doctor Brief view | `frontend/index.html` |

---

## 🚀 Quick Start (Local Run)

### Method 1: 1-Click Launch (Windows)
Double-click `run_app.bat` inside the project folder. It will launch the Uvicorn server and open your browser automatically at `http://127.0.0.1:8000/`.

### Method 2: Manual Terminal Commands
```bash
# 1. Navigate to backend directory
cd backend

# 2. Run Uvicorn Server
python -m uvicorn main:app --reload --host 127.0.0.1 --port 8000
```
Open [http://127.0.0.1:8000](http://127.0.0.1:8000) in your web browser.

---

## ☁️ Production Cloud Deployment Guide

### Option 1: Render.com (Recommended Free Hosting)
1. Push this repository to GitHub.
2. Log into [Render.com](https://render.com) and create a **Web Service**.
3. Connect your GitHub repository.
4. Set **Build Command**: `pip install -r backend/requirements.txt`
5. Set **Start Command**: `uvicorn backend.main:app --host 0.0.0.0 --port $PORT`
6. Add Environment Variable: `GEMINI_API_KEY` (optional, for live Gemini LLM calls).

### Option 2: Docker Container Deployment (Railway / GCP / AWS / Fly.io)
```bash
# Build Docker Image
docker build -t lablens-ai .

# Run Docker Container
docker run -p 8000:8000 --env GEMINI_API_KEY="your_api_key" lablens-ai
```

---

## 🧪 Running Automated Tests

```bash
# Run Member 1 AI Core Test
python backend/test_lead_core.py

# Run Member 2 PDF Parser Test
python backend/test_member2_parser.py

# Run Member 3 RAG Assistant Test
python backend/test_member3_rag.py

# Run Member 4 Analytics & DB Test
python backend/test_member4_analytics.py
```

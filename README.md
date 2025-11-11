# ✨ AI Text Humanizer App ✨  
Transform AI-generated text into **formal, human-like, and academic writing** with ease, avoids AI detector! 🚀

![Streamlit](https://img.shields.io/badge/Streamlit-Web_App-red?style=flat-square&logo=streamlit)
![Python](https://img.shields.io/badge/Python-3.9%20%7C%203.10%20%7C%203.11-blue?style=flat-square&logo=python)
![License](https://img.shields.io/github/license/DadaNanjesha/AI-Text-Humanizer-App?style=flat-square)


## Note : (Try It )
Building new version of this project here in this repos https://github.com/DadaNanjesha/DN-Bot


## 📌 Features  

✅ **AI-Powered Text Refinement**: Converts AI-generated or informal text into a more **academic** and **human-like** format.  
✅ **Expand Contractions**: Transforms "don't" → "do not", "it's" → "it is", making text **formal**.  
✅ **Add Academic Transitions**: Enhances coherence with phrases like **"Moreover"**, **"Therefore"**, etc.  
✅ **Passive Voice Conversion** *(Optional)*: "The researcher conducted the study" → "The study was conducted".  
✅ **Synonym Replacement** *(Optional)*: Replaces words with **more sophisticated alternatives**.  
✅ **Word & Sentence Statistics**: Instantly view **word and sentence counts** before and after transformation.  
✅ **Streamlit Web Interface**: Use a simple **web app** to input, transform, and copy text effortlessly.  
 

---

## 🚀 Live   
🔗 **[Try the AI Text Humanizer App on Streamlit](https://ai-text-humanizer-app-by-dada.streamlit.app/)** *

![AI-Text-Humanizer-App](media/AITOHUMAN.png)

---

## 📥 Installation  

### ⚠️ Python Version Requirements
- **Required**: Python 3.9, 3.10, or 3.11
- **Not supported**: Python 3.12+ (dependency compatibility issues)
- **Not supported**: Python 3.8 or earlier

### 1️⃣ Clone the Repository  
```bash
git clone https://github.com/DadaNanjesha/AI-Text-Humanizer-App.git
cd AI-Text-Humanizer-App
```

### 2️⃣ Set Up a Virtual Environment (Recommended)  
```bash
python3.11 -m venv venv  # Use Python 3.9, 3.10, or 3.11
source venv/bin/activate   # Linux/Mac
venv\Scripts\activate      # Windows
```

### 3️⃣ Install Dependencies  

**Option A: Using setup.sh (Recommended)**
```bash
chmod +x setup.sh
./setup.sh
```

**Option B: Manual Installation**
```bash
pip install --upgrade pip setuptools wheel

# Install NumPy first (must be <2.0 for compatibility)
pip install "numpy<2.0"

# Install PyTorch from PyTorch repository
pip install torch --index-url https://download.pytorch.org/whl/cpu

# Install other dependencies
pip install -r requirements.txt

# Download NLP models
python -m spacy download en_core_web_sm
python -c "import nltk; nltk.download('punkt', quiet=True); nltk.download('wordnet', quiet=True); nltk.download('averaged_perceptron_tagger', quiet=True)"
```

### 🔧 Troubleshooting

**Issue: `blis==1.2.0` installation fails**
- **Solution**: Use Python 3.9-3.11. Python 3.12+ is not supported.

**Issue: `torch==2.4.1` not found**
- **Solution**: Install torch from PyTorch repository: `pip install torch --index-url https://download.pytorch.org/whl/cpu`

**Issue: NumPy compatibility warnings**
- **Solution**: NumPy 2.x is not compatible. The setup script automatically installs NumPy <2.0.

**Issue: spaCy model download fails**
- **Solution**: Ensure you have internet connection and try: `python -m spacy download en_core_web_sm`

---

## 🖥️ Usage  

### 🎯 **Run the Streamlit Web App**  
```bash
streamlit run main.py
```
- This will **open a browser** at `http://localhost:8501` 🎉  
- Paste or upload your text, apply transformations, and see instant results!  


---

## 🛠️ Deployment  

### 📌 **Deploying on Streamlit Cloud**  
1. Push your repo to GitHub.  
2. Ensure `setup.sh` is in the repo root.  
3. Link your **GitHub repo** to **Streamlit Cloud** & specify `app.py` as the entry point.  
4. Streamlit Cloud will handle the deployment automatically.  

---

## 📂 Project Structure  

```
AI-Text-Humanizer-App/
├── app.py                    # Streamlit Web Interface
├── main.py                   # PyQt Desktop Interface (Optional)
├── requirements.txt           # Dependencies
├── setup.sh                   # Auto-installs NLP models
├── transformer/               # Contains text transformation logic
│   ├── __init__.py
│   └── app.py                 # AI Text Humanization Engine
├── .github/workflows/         # GitHub CI/CD Config
│   ├── ci.yml               # CI/CD for GitHub Actions
│   
└── README.md 
                 # You are here! 🚀
```

---

## 👨‍💻 Contributing  

🙌 We welcome contributions! Follow these simple steps:

1. **Fork** this repository.  
2. **Create a new branch** (`git checkout -b feature-branch`).  
3. **Commit your changes** (`git commit -m "Add new feature"`).  
4. **Push to GitHub** (`git push origin feature-branch`).  
5. **Open a Pull Request** and let’s improve the project together! 🚀  

---

## 📄 License  

📝 This project is licensed under the **MIT License** – feel free to use and modify it as needed.

---
## ⭐️ Support & Call-to-Action

If you find this project useful, please consider:
- **Starring** the repository ⭐️
- **Forking** the project to contribute enhancements
- **Following** for updates on future improvements

Your engagement helps increase visibility and encourages further collaboration!

---

## 📞 Contact & Support  

For any issues or feature requests, feel free to:  
📩 **Open an Issue**: [GitHub Issues](https://github.com/DadaNanjesha/AI-Text-Humanizer-App/issues)  
👨‍💻 **Maintainer**: [@DadaNanjesha](https://github.com/DadaNanjesha)  

---

🔥 **Transform Your AI-Generated Text with Ease!** ✨

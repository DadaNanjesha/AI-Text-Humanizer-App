#!/usr/bin/env bash

# AI Text Humanizer App - Setup Script
# This script handles dependency installation with proper version compatibility

set -e  # Exit on error

echo "🔧 Setting up AI Text Humanizer App..."

# Check Python version
PYTHON_VERSION=$(python3 --version 2>&1 | awk '{print $2}' | cut -d. -f1,2)
PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d. -f1)
PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d. -f2)

echo "📌 Detected Python version: $PYTHON_VERSION"

# Check if Python version is compatible (3.9-3.11)
if [ "$PYTHON_MAJOR" -lt 3 ] || ([ "$PYTHON_MAJOR" -eq 3 ] && [ "$PYTHON_MINOR" -lt 9 ]); then
    echo "❌ Error: Python 3.9 or higher is required. Found Python $PYTHON_VERSION"
    echo "Please upgrade Python to 3.9, 3.10, or 3.11"
    exit 1
fi

if [ "$PYTHON_MAJOR" -eq 3 ] && [ "$PYTHON_MINOR" -gt 11 ]; then
    echo "⚠️  Warning: Python 3.12+ detected. Some dependencies may not be compatible."
    echo "Consider using Python 3.9-3.11 for best compatibility."
    echo "Continuing with installation..."
fi

# Upgrade pip
echo "📦 Upgrading pip..."
pip install --upgrade pip setuptools wheel

# Install NumPy first (required for other packages, must be <2.0 for spacy compatibility)
echo "📦 Installing NumPy (compatible version)..."
pip install "numpy<2.0"

# Install torch from PyTorch repository (handles version compatibility automatically)
echo "📦 Installing PyTorch (CPU version) from PyTorch repository..."
pip install torch --index-url https://download.pytorch.org/whl/cpu

# Install other dependencies from requirements.txt
echo "📦 Installing other dependencies..."
pip install -r requirements.txt

# Download spaCy model
echo "📥 Downloading spaCy model (en_core_web_sm)..."
python -m spacy download en_core_web_sm

# Download NLTK resources
echo "📥 Downloading NLTK resources..."
python -c "import nltk; nltk.download('punkt', quiet=True); nltk.download('wordnet', quiet=True); nltk.download('averaged_perceptron_tagger', quiet=True); nltk.download('punkt_tab', quiet=True); nltk.download('averaged_perceptron_tagger_eng', quiet=True)" || {
    echo "⚠️  Warning: Some NLTK downloads may have failed, but continuing..."
}

echo ""
echo "✅ Installation complete!"
echo ""
echo "🚀 To run the app:"
echo "   streamlit run main.py"
echo ""

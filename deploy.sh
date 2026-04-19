#!/bin/bash
# ============================================================
# STEP 3: RUN THIS TO BUILD AND DEPLOY
# Installs Python dependencies, renders the site, commits and pushes
# Usage: bash deploy.sh
# ============================================================

echo ">>> Installing Python dependencies..."
pip install plotly pandas numpy jupyter

echo ">>> Installing FontAwesome extension..."
quarto add quarto-ext/fontawesome --no-prompt

echo ">>> Rendering Quarto site..."
quarto render

echo ">>> Staging rendered docs/ folder..."
git add docs/
git commit -m "build: render site to docs/ for GitHub Pages"

echo ">>> Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Site deployed!"
echo "Your site will be live in ~2 minutes at:"
echo "https://gnaneshreddy16-tech.github.io/eportfolio/"
echo ""
echo "If it's not loading, check: GitHub repo > Settings > Pages"
echo "Make sure: Branch = main, Folder = /docs"

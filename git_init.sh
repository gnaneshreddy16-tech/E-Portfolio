#!/bin/bash
# ============================================================
# STEP 2: RUN THIS AFTER setup.sh
# Initialises Git, links your GitHub repo, makes first commits
# Usage: bash git_init.sh
# ============================================================

echo ">>> Initialising Git repository..."
git init

echo ">>> Adding .gitignore and .nojekyll..."
git add .gitignore .nojekyll
git commit -m "chore: add .gitignore and .nojekyll"

echo ">>> Adding project configuration..."
git add _quarto.yml styles.scss
git commit -m "feat: configure _quarto.yml with navbar, footer, theme, and SCSS"

echo ">>> Adding landing and about pages..."
git add index.qmd about.qmd
git commit -m "feat: add landing page with About template and about page"

echo ">>> Adding reflection and contact pages..."
git add reflection.qmd contact.qmd
git commit -m "feat: add reflection and contact pages"

echo ">>> Adding projects listing and individual projects..."
git add projects/
git commit -m "feat: add projects listing with stock market and sales analysis"

echo ""
echo "✅ Git history created with clean commits."
echo ""
echo "NOW: Link your GitHub repo and push:"
echo ""
echo "  git remote add origin https://github.com/gnaneshreddy16-tech/eportfolio.git"
echo "  git branch -M main"
echo "  git push -u origin main"
echo ""
echo "Then on GitHub: Settings > Pages > Branch: main > Folder: /docs > Save"

#!/bin/bash
# ============================================================
# STEP 1: RUN THIS SCRIPT FIRST — in Terminal
# Creates the full folder structure and all required files
# Usage: bash setup.sh
# ============================================================

echo ">>> Creating folder structure..."
mkdir -p images cv projects/list docs

echo ">>> Creating required empty/placeholder files..."
touch .nojekyll

# Create placeholder images notice
cat > images/README.md << 'EOF'
Add these files to this folder:
- profile.jpg       (your professional photo)
- favicon.png       (32x32px icon — generate at favicon.io)
- logo.png          (site logo — create at Adobe Express)
- project1-cover.jpg (any data/finance related image)
- project2-cover.jpg (any business/chart related image)
EOF

echo ">>> Creating .gitignore..."
cat > .gitignore << 'EOF'
.quarto/
__pycache__/
*.pyc
.DS_Store
Thumbs.db
.env
*.egg-info/
.ipynb_checkpoints/
EOF

echo ""
echo "✅ Folder structure ready."
echo ""
echo "NEXT STEPS:"
echo "1. Add your images to the images/ folder (see images/README.md)"
echo "2. Add your CV PDF to the cv/ folder — name it cv.pdf"
echo "3. Run: bash git_init.sh"

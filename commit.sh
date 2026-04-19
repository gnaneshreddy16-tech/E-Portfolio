#!/bin/bash
# ============================================================
# USE THIS THROUGHOUT DEVELOPMENT
# Run after every meaningful change to keep clean Git history
# Usage: bash commit.sh "your message here"
# Example: bash commit.sh "feat: add volatility chart to stock project"
# ============================================================

if [ -z "$1" ]; then
  echo "❌ Error: Please provide a commit message."
  echo "Usage: bash commit.sh \"your message here\""
  exit 1
fi

quarto render
git add .
git commit -m "$1"
git push origin main

echo ""
echo "✅ Committed and pushed: $1"

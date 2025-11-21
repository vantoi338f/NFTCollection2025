#!/bin/bash
git add .

# Auto generate commit message siêu thông minh nếu không nhập
if [ -z "$1" ]; then
    MSG="🚀 Update pro max - $(date '+%Y-%m-%d %H:%M:%S')"
else
    MSG="$*"
fi

git commit -m "$MSG"
git push origin $(git branch --show-current) --force-with-lease && \
echo ""
echo "╔════════════════════════════════════╗"
echo "║     PUSH THÀNH CÔNG ĐỈNH CAO!!     ║"
echo "║     $(git remote -v | head -1 | awk '{print $2}')     ║"
echo "╚════════════════════════════════════╝"

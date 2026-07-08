#!/bin/bash
# Đẩy nội dung mới nhất của index.html lên GitHub Pages.
# Cách dùng: sửa nội dung file index.html trong thư mục này xong, rồi chạy:
#   ./deploy.sh "mô tả ngắn về thay đổi"
set -e
cd "$(dirname "$0")"

MSG="${1:-Cập nhật nội dung $(date +%Y-%m-%d)}"

git add -A
if git diff --cached --quiet; then
  echo "Không có thay đổi nào để đẩy lên."
  exit 0
fi

git commit -m "$MSG"
git push origin main

echo ""
echo "Đã đẩy lên GitHub. Trang sẽ cập nhật trong ít phút tại:"
echo "https://trungminh0811.github.io/30shine-quy-trinh/"

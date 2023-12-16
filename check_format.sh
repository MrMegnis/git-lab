#!/bin/bash
repo_path=$(git rev-parse --show-toplevel)

txt_files=$(find -name "*.txt")

for file in $txt_files; do
    if ! grep -q "^Lorem" "$file"; then
        echo "Ошибка: Файл $file не соответствует необходимому формату."
        exit 1
    fi
done

echo "Коммит разрешен."
exit 0

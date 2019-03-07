#!/usr/bin/env bash

echo "Running pre-commit hook"
python manage.py test

# $?は最後に実行されたコマンドの戻り値が格納される
# 戻り値が0だと正常にコマンドが終了
if [ $? -ne 0 ]; then
  # 戻り値が0以外の場合に実行される
  echo "Tests must pass before commit!"
  exit 1
fi
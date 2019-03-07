#!/usr/bin/env bash

# .gitディレクトリの場所を取得
GIT_DIR=$(git rev-parse --git-dir)

echo "Installing hooks..."
# pre-commit.bashのシンボリックリンクを、.git/hooks/pre-commitとして作成する
ln -s ../../scripts/pre-commit.bash $GIT_DIR/hooks/pre-commit
echo "Done!"
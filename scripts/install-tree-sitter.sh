#!/bin/bash
# https://github.com/tree-sitter/tree-sitter

VERSION=$(curl -s "https://api.github.com/repos/tree-sitter/tree-sitter/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

echo "Installing tree-sitter version: $VERSION"

curl -Lo tree-sitter.gz "https://github.com/tree-sitter/tree-sitter/releases/download/${VERSION}/tree-sitter-linux-x64.gz"
gzip -d tree-sitter.gz
install tree-sitter ~/.local/bin/
rm tree-sitter

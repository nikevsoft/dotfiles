#!/bin/bash
# https://github.com/jesseduffield/lazygit

VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "\Kv\K[^"]*')

echo "Installing lazygit version: $VERSION"

curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/download/v${VERSION}/lazygit_${VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
install lazygit ~/.local/bin
rm lazygit lazygit.tar.gz

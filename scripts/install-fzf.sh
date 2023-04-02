#!/bin/bash
# https://github.com/junegunn/fzf

VERSION=$(curl -s "https://api.github.com/repos/junegunn/fzf/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
curl -Lo fzf.tar.gz "https://github.com/junegunn/fzf/releases/download/${VERSION}/fzf-${VERSION}-linux_amd64.tar.gz"
tar xf fzf.tar.gz fzf
sudo install fzf /usr/local/bin

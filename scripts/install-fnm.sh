#!/bin/bash
# https://github.com/Schniz/fnm

VERSION=$(curl -s "https://api.github.com/repos/Schniz/fnm/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
curl -Lo fnm-linux.zip "https://github.com/Schniz/fnm/releases/download/${VERSION}/fnm-linux.zip"
unzip fnm-linux.zip
install fnm ~/.local/bin

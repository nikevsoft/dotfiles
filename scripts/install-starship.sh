#!/bin/bash
# https://github.com/starship/starship

VERSION=$(curl -s "https://api.github.com/repos/starship/starship/releases/latest" | grep -Po '"tag_name": "\K[^"]*')

echo "Installing starship version: $VERSION"

curl -Lo starship.tar.gz "https://github.com/starship/starship/releases/download/${VERSION}/starship-x86_64-unknown-linux-gnu.tar.gz"
tar xf starship.tar.gz starship
install starship ~/.local/bin/
rm starship starship.tar.gz

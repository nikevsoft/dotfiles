#!/bin/bash
# https://github.com/oberblastmeister/trashy

VERSION=$(curl -s "https://api.github.com/repos/oberblastmeister/trashy/releases/latest" | grep -Po '"tag_name": "\K[^"]*')
curl -Lo trash.tar.gz "https://github.com/oberblastmeister/trashy/releases/download/${VERSION}/trash-x86_64-unknown-linux-gnu.tar.gz"
tar xf trash.tar.gz trash
sudo install trash /usr/local/bin

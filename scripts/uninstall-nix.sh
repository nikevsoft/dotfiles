#!/bin/bash

# delete the systemd service and socket units
sudo systemctl stop nix-daemon.socket
sudo systemctl stop nix-daemon.service
sudo systemctl disable nix-daemon.socket
sudo systemctl disable nix-daemon.service
sudo systemctl daemon-reload

# restore bashrc
sudo mv /etc/bashrc.backup-before-nix /etc/bashrc
sudo mv /etc/bash.bashrc.backup-before-nix /etc/bash.bashrc

# restore nix.sh
sudo mv /etc/profile.d/nix.sh.backup-before-nix /etc/profile.d/nix.sh

# restore zshrc
sudo mv /etc/zshrc.backup-before-nix /etc/zshrc
sudo mv /etc/zsh/zshrc.backup-before-nix /etc/zsh/zshrc

# delete files Nix added to the system
sudo rm -rf /etc/nix /nix /root/.nix-profile /root/.nix-defexpr /root/.nix-channels $HOME/.nix-profile $HOME/.nix-defexpr $HOME/.nix-channels

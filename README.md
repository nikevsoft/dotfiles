# Linux Configuration
- My linux configuration using Arch linux and Gnome

## Gnome Theme
- Configure theme using `gnome-tweaks`
```
yay -S gtk-themes-extra \
        gtk-engine-murrine \
        catppuccin-gtk-theme-mocha \
        catppuccin-gtk-theme-macchiato \
        catppuccin-gtk-theme-frappe \
        catppuccin-gtk-theme-latte \
        nordzy-icon-theme \
        nordzy-cursors \
        nerd-fonts-meta \
        apple-fonts \
```

## Gnome Extensions
- User Themes
- Dash to Dock

## Tiling Manager
- Pop OS
```
yay -S gnome-shell-extension-pop-shell
```

- After install run the configure script to setup shortcuts
```
./configure-pop-shell.sh
```

## Stow
```
yay -S stow
```

- Inside the `.dotfiles` run the command to perform symlinks

```
stow .
```

## Starship
```
yay -S starship 
```

## Editor
```
yay -S neovim 
```

## Tmux
```
yay -S tmux-plugin-manager
```

- Manually initialize tpm

```
./usr/share/tmux-plugin-manager/scripts/install_plugins.sh
```

## Other useful commands
- Disable the bell for gnome kgx console
```
gsettings set org.gnome.desktop.wm.preferences audible-bell false \
gsettings set org.gnome.desktop.wm.preferences visual-bell false
```

- Disable dash-to-dock hotkeys
```
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false
```

## Terminal shortcut 
| Key      | Value         |
|----------|:-------------:|
| Name     | Gnome Console |
| Command  | kgx           |
| Shortcut | Super + T     |

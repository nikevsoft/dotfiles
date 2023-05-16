# Linux Configuration

## Gtk Catppuccin Theme

- Configure theme using `gnome-tweaks`

```
yay -S gnome-themes-extra gtk-engine-murrine gnome-browser-connector catppuccin-gtk-theme-frappe nordzy-icon-theme nordzy-cursors nerd-fonts-meta apple-fonts 
```

##  Gnome Extensions

- User Themes
- Hide Activities Button
- Dash to Dock

## Tiling Manager

- Pop Shell

```
yay -S gnome-shell-extension-pop-shell
```

After installing, run `configure-pop-shell.sh` to setup shortcuts

```
./configure-pop-shell.sh
```

## Stow

```
yay -S stow
```

Inside the `.dotfiles` run the command to perform symlinks

```
stow bash git starship tmux nvim
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

Manually initialize tpm

```
cd /usr/share/tmux-plugin-manager/scripts/ && ./install_plugins.sh
```

## Terminal shortcut

| Key      |     Value      |
| -------- | :------------: |
| Name     | Gnome Terminal |
| Command  | gnome-terminal |
| Shortcut |   Super + T    |

## Gnome Viewers

Also enables thumbnails when viewing from Nautilus.

- Gthumb for pictures
- Totem for videos
- Evince for documents

```
yay -S gthumb totem evince
```

## Other useful commands

### Disable terminal bell for gnome `kgx console`

```
gsettings set org.gnome.desktop.wm.preferences audible-bell false
gsettings set org.gnome.desktop.wm.preferences visual-bell false
```

## Extra

### Dash-to-dock

Dash to Dock hotkeys overrides the pop-shell `<Super>q`.
Disable this by going to Extensions Settings > Behaviours > Toggle use shortcut keys

### Dconf-editor
Use to edit gnome settings with a GUI

```
yay -S dconf-editor
```

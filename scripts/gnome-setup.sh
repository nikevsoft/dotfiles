#!/bin/sh
# taken directly from the pop-shell repo

set -ex

shortcut_applied() {
	# Check if user confirmed overriding shortcuts
	if test -f "./.confirm_shortcut_change"; then
		echo "Shortcut change already confirmed"
		return 0
	fi

	read -p "Script will override your default shortcuts. Are you sure? (y/n) " CONT
	if test "$CONT" = "y"; then
		touch "./.confirm_shortcut_change"
		return 1
	else
		echo "Cancelled"
		return 0
	fi
}

set_keybindings() {
	if shortcut_applied; then
		return 0
	fi

	# Gnome Applications
	GNOME_APP_TERMINAL=/org/gnome/applications/terminal
	dconf write ${GNOME_APP_TERMINAL}/exec 'kitty'

	# Gnome WM Keybindings
	GNOME_WM_KEYS=/org/gnome/desktop/wm/keybindings
	dconf write ${GNOME_WM_KEYS}/activate-window-menu "@as ['<Super>space']"
	dconf write ${GNOME_WM_KEYS}/begin-move "@as []"
	dconf write ${GNOME_WM_KEYS}/begin-resize "@as []"
	dconf write ${GNOME_WM_KEYS}/close "@as ['<Super>q', '<Alt>F4']"
	dconf write ${GNOME_WM_KEYS}/cycle-group "@as []"
	dconf write ${GNOME_WM_KEYS}/cycle-group-backward "@as []"
	dconf write ${GNOME_WM_KEYS}/cycle-panels "@as []"
	dconf write ${GNOME_WM_KEYS}/cycle-panels-backward "@as []"
	dconf write ${GNOME_WM_KEYS}/cycle-windows "@as []"
	dconf write ${GNOME_WM_KEYS}/cycle-windows-backward "@as []"
	dconf write ${GNOME_WM_KEYS}/move-to-workspace-1 "@as ['<Shift><Super>1']"
	dconf write ${GNOME_WM_KEYS}/move-to-workspace-2 "@as ['<Shift><Super>2']"
	dconf write ${GNOME_WM_KEYS}/move-to-workspace-3 "@as ['<Shift><Super>3']"
	dconf write ${GNOME_WM_KEYS}/move-to-workspace-4 "@as ['<Shift><Super>4']"
	dconf write ${GNOME_WM_KEYS}/move-to-workspace-last "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-applications "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-applications-backward "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-group "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-group-backward "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-input-source "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-input-source-backward "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-panels "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-panels-backward "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-to-workspace-1 "@as ['<Super>1']"
	dconf write ${GNOME_WM_KEYS}/switch-to-workspace-2 "@as ['<Super>2']"
	dconf write ${GNOME_WM_KEYS}/switch-to-workspace-3 "@as ['<Super>3']"
	dconf write ${GNOME_WM_KEYS}/switch-to-workspace-4 "@as ['<Super>4']"
	dconf write ${GNOME_WM_KEYS}/switch-to-workspace-last "@as []"
	dconf write ${GNOME_WM_KEYS}/switch-to-workspace-left "@as ['<Shift><Super>h']"
	dconf write ${GNOME_WM_KEYS}/switch-to-workspace-last "@as ['<Shift><Super>l']"

	# Gnome WM Preferences
	GNOME_WM_PREFS=/org/gnome/desktop/wm/preferences
	dconf write ${GNOME_WM_PREFS}/audible-bell false
	dconf write ${GNOME_WM_PREFS}/auto-raise true
	dconf write ${GNOME_WM_PREFS}/workspace-names "@as ['Terminal', 'Browser', 'Any', 'Files', 'Media']"

	#Gnome Mutter
	GNOME_MUTTER=/org/gnome/mutter

	dconf write ${GNOME_MUTTER}/edge-tiling false
	dconf write ${GNOME_MUTTER}/overlay-key 'Super_R'
	dconf write ${GNOME_MUTTER}/workspaces-only-on-primary true

	#Gnome Mutter Keybindings
	GNOME_MUTTER_KEYS=${GNOME_MUTTER}/keybindings
	dconf write ${GNOME_MUTTER_KEYS}/toggle-tiled-left "@as []"
	dconf write ${GNOME_MUTTER_KEYS}/toggle-tiled-right "@as []"

	#Gnome Mutter Wayland
	GNOME_MUTTER_WAYLAND=${GNOME_MUTTER}/wayland/keybindings
	dconf write ${GNOME_MUTTER_WAYLAND}/restore-shortcuts "@as []"

	#Gnome Shell
	GNOME_SHELL=/org/gnome/shell
	dconf write ${GNOME_SHELL}/remember-mount-password true

	# Gnome Shell Keybindings
	GNOME_SHELL_KEYS=${GNOME_SHELL}/keybindings
	dconf write ${GNOME_SHELL_KEYS}/focus-active-notification "@as []"
	dconf write ${GNOME_SHELL_KEYS}/screenshot "@as []"
	dconf write ${GNOME_SHELL_KEYS}/screenshot-window "@as []"
	dconf write ${GNOME_SHELL_KEYS}/show-screen-recording-ui "@as ['<Shift><Control><Super>r']"
	dconf write ${GNOME_SHELL_KEYS}/show-screenshot-ui "@as ['<Shift><Control><Super>p']"
	dconf write ${GNOME_SHELL_KEYS}/toggle-application-view "@as []"
	dconf write ${GNOME_SHELL_KEYS}/toggle-quick-settings "@as []"

	# Gnome Shell Extensions
	GNOME_SHELL_EXT=${GNOME_SHELL}/extensions

	# Pop Shell
	GNOME_SHELL_EXT_POP_SHELL=${GNOME_SHELL_EXT}/pop-shell
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/activate-launcher "@as ['<Super>d']"
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/activate-hint true
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/activate-hint-border-radius 5
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/fullscreen-launcher true
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/hint-color-rgba 'rgb(232,236,241)'
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/pop-monitor-down "@as []"
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/pop-monitor-left "@as []"
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/pop-monitor-right "@as []"
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/pop-monitor-up "@as []"
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/pop-workspace-down "@as []"
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/pop-workspace-up "@as []"
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/show-title false
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/snap-to-grid false
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/tile-by-default true
	dconf write ${GNOME_SHELL_EXT_POP_SHELL}/tile-enter "@as ['<Super>e']"

	# Gnome Settings Daemon
	GNOME_SETTINGS_DAEMON=/org/gnome/settings-daemon
	GNOME_SETTINGS_DAEMON_PLUGINS=${GNOME_SETTINGS_DAEMON}/plugins

	# Gnome Settings Daemon Plugins
	GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS=${GNOME_SETTINGS_DAEMON_PLUGINS}/media-keys
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/custom-keybindings "@as ['/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/']"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/email "@as []"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/help "@as []"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/logout "@as ['<Shift><Control><Super>e']"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/magnifier "@as []"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/magnifier-zoom-in "@as []"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/magnifier-zoom-out "@as []"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/screenreader "@as []"
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/screensaver "@as ['<Shift><Control><Super>l']"

	# Gnome Settings Daemon Custom Keys
	GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS_CUSTOM_0=${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS}/custom-keybindings/custom0
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS_CUSTOM_0}/name 'Terminal'
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS_CUSTOM_0}/binding '<Super>t'
	dconf write ${GNOME_SETTINGS_DAEMON_PLUGINS_MEDIA_KEYS_CUSTOM_0}/command 'kitty'
}

if ! command -v gnome-extensions >/dev/null; then
	echo 'You must install gnome-extensions to configure or enable via this script'
	'(`gnome-shell` on Debian systems, `gnome-extensions` on openSUSE systems.)'
	exit 1
fi

set_keybindings

# Make sure user extensions are enabled
dconf write /org/gnome/shell/disable-user-extensions false

# Use a window placement behavior which works better for tiling
if gnome-extensions list | grep native-window; then
	gnome-extensions enable $(gnome-extensions list | grep native-window)
fi

# Workspaces spanning displays works better with Pop Shell
dconf write /org/gnome/mutter/workspaces-only-on-primary false

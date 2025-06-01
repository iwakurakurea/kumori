local appmenu = {}

appmenu.Accessories = {
    { 'Fcitx 5', '/usr/bin/fcitx5', '/usr/share/icons/hicolor/22x22/apps/fcitx.png' },
    { 'Keyboard layout viewer', 'kbd-layout-viewer5' },
    { 'Neovim', 'xterm -e nvim', '/usr/share/icons/hicolor/128x128/apps/nvim.png' },
    { 'Picom', 'picom', '/usr/share/icons/hicolor/scalable/apps/compton.svg' },
    { 'Redshift', 'redshift-gtk', '/usr/share/icons/hicolor/scalable/apps/redshift.svg' },
    { 'Screenshot', 'gnome-screenshot --interactive', '/usr/share/icons/hicolor/scalable/apps/org.gnome.Screenshot.svg' },
    { 'Spectacle', '/usr/bin/spectacle', '/usr/share/icons/hicolor/scalable/apps/spectacle.svg' },
    { 'Vim', 'xterm -e vim', '/usr/share/icons/hicolor/48x48/apps/gvim.png' },
    { 'XColor', 'xcolor -s', '/usr/share/icons/hicolor/16x16/apps/xcolor.png' },
}

appmenu.Development = {
    { 'GitHub Desktop', '/usr/bin/github-desktop', '/usr/share/icons/hicolor/1024x1024/apps/github-desktop.png' },
    { 'Icon Explorer', 'iconexplorer', '/usr/share/icons/hicolor/scalable/apps/org.kde.iconexplorer.svg' },
    { 'Plasma Engine Explorer', 'plasmaengineexplorer' },
    { 'Plasma Theme Explorer', 'plasmathemeexplorer' },
    { 'Qt Assistant', 'assistant6', '/usr/share/icons/hicolor/128x128/apps/assistant.png' },
    { 'Qt D-Bus Viewer', 'qdbusviewer6', '/usr/share/icons/hicolor/128x128/apps/qdbusviewer.png' },
    { 'Qt Linguist', 'linguist6', '/usr/share/icons/hicolor/128x128/apps/linguist.png' },
    { 'Qt Widgets Designer', 'designer6', '/usr/share/icons/hicolor/128x128/apps/designer.png' },
}

appmenu.Games = {
    { 'Black Mesa', 'steam steam://rungameid/362890' },
    { 'Deus Ex: Game of the Year Edition', 'steam steam://rungameid/6910' },
    { 'Dota 2', 'steam steam://rungameid/570' },
    { 'ENDER LILIES: Quietus of the Knights', 'steam steam://rungameid/1369630' },
    { 'Half-Life 2', 'steam steam://rungameid/220' },
    { 'OpenMW Content Editor', 'openmw-cs' },
    { 'OpenMW Launcher', 'openmw-launcher' },
    { 'PAYDAY 2', 'steam steam://rungameid/218620' },
    { 'Steam', '/usr/bin/steam', '/usr/share/icons/hicolor/16x16/apps/steam.png' },
    { 'The Elder Scrolls III: Morrowind', 'steam steam://rungameid/22320' },
    { 'The Elder Scrolls IV: Oblivion Game of the Year Edition (2009)', 'steam steam://rungameid/22330' },
    { 'Vampire: The Masquerade - Bloodlines', 'steam steam://rungameid/2600' },
}

appmenu.Graphics = {
    { 'XColor', 'xcolor -s', '/usr/share/icons/hicolor/16x16/apps/xcolor.png' },
}

appmenu.Internet = {
    { 'Avahi SSH Server Browser', '/usr/bin/bssh' },
    { 'Avahi VNC Server Browser', '/usr/bin/bvnc' },
    { 'Discord', '/usr/bin/discord', '/usr/share/icons/hicolor/256x256/apps/discord.png' },
    { 'Firefox', '/usr/lib/firefox/firefox --new-window', '/usr/share/icons/hicolor/22x22/apps/firefox.png' },
    { 'Steam', '/usr/bin/steam', '/usr/share/icons/hicolor/16x16/apps/steam.png' },
    { 'Tor Browser', 'tor-browser', '/usr/share/icons/hicolor/128x128/apps/tor-browser.png' },
}

appmenu.MultiMedia = {
    { 'Qt V4L2 test Utility', 'qv4l2', '/usr/share/icons/hicolor/16x16/apps/qv4l2.png' },
    { 'Qt V4L2 video capture utility', 'qvidcap', '/usr/share/icons/hicolor/16x16/apps/qvidcap.png' },
    { 'Spotify', 'spotify --uri=' },
    { 'mpv Media Player', 'mpv --player-operation-mode=pseudo-gui --', '/usr/share/icons/hicolor/128x128/apps/mpv.png' },
}

appmenu.Settings = {
    { 'Advanced Network Configuration', 'nm-connection-editor' },
    { 'Fcitx 5 Configuration', '/usr/bin/fcitx5-configtool', '/usr/share/icons/hicolor/22x22/apps/fcitx.png' },
    { 'Fcitx 5 Migration Wizard', 'fcitx5-migrator', '/usr/share/icons/hicolor/22x22/apps/fcitx.png' },
    { 'KDE System Settings', 'systemsettings' },
}

appmenu.System = {
    { 'Alacritty', 'alacritty' },
    { 'Avahi Zeroconf Browser', '/usr/bin/avahi-discover' },
    { 'Crashed Processes Viewer', 'drkonqi-coredump-gui' },
    { 'Discover', 'plasma-discover', '/usr/share/icons/hicolor/22x22/apps/plasmadiscover.png' },
    { 'Dolphin', 'dolphin', '/usr/share/icons/hicolor/scalable/apps/org.kde.dolphin.svg' },
    { 'Fcitx 5', '/usr/bin/fcitx5', '/usr/share/icons/hicolor/22x22/apps/fcitx.png' },
    { 'Hardware Locality lstopo', 'lstopo' },
    { 'Htop', 'xterm -e htop', '/usr/share/icons/hicolor/scalable/apps/htop.svg' },
    { 'System Monitor', 'plasma-systemmonitor' },
    { 'UXTerm', 'uxterm' },
    { 'XTerm', 'xterm' },
    { 'ranger', 'xterm -e ranger' },
}

appmenu.Miscellaneous = {
    { 'Rofi', 'rofi -show', '/usr/share/icons/hicolor/scalable/apps/rofi.svg' },
    { 'Rofi Theme Selector', 'rofi-theme-selector', '/usr/share/icons/hicolor/scalable/apps/rofi.svg' },
}

appmenu.Appmenu = {
    { 'Accessories', appmenu.Accessories },
    { 'Development', appmenu.Development },
    { 'Games', appmenu.Games },
    { 'Graphics', appmenu.Graphics },
    { 'Internet', appmenu.Internet },
    { 'MultiMedia', appmenu.MultiMedia },
    { 'Settings', appmenu.Settings },
    { 'System', appmenu.System },
    { 'Miscellaneous', appmenu.Miscellaneous },
}

return appmenu
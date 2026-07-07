# .bash_profile

# Get the aliases and functions
[ -f $HOME/.bashrc ] && . $HOME/.bashrc

export GDK_SCALE=1
export GTK_THEME=dark_void

export XCURSOR_THEME=Adwaita
export XCURSOR_SIZE=32

export QT_AUTO_SCREEN_SCALE_FACTOR=1
export QT_ENABLE_HIGHDPI_SCALING=1
export QT_QPA_PLATFORMTHEME=qt5ct

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then
	startx
fi


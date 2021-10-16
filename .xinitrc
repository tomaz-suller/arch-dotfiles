eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
source /etc/X11/xinit/xinitrc.d/50-systemd-user.sh

setxbmap br &
bluetoothctl power on &
xset dpms 150 300 600 &
exec i3

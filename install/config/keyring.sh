# Mask gnome-keyring systemd units so PAM manages the daemon exclusively.
mkdir -p ~/.config/systemd/user
ln -sf /dev/null ~/.config/systemd/user/gnome-keyring-daemon.service
ln -sf /dev/null ~/.config/systemd/user/gnome-keyring-daemon.socket

# Set 'login' as the default keyring. PAM creates login.keyring on first SDDM
# login but does not update this file automatically.
mkdir -p ~/.local/share/keyrings
echo -n "login" > ~/.local/share/keyrings/default

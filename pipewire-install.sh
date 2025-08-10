sudo apt update
sudo apt install pipewire pipewire-pulse pipewire-audio-client-libraries wireplumber pulseaudio-utils

systemctl --user stop pulseaudio
systemctl --user --now enable pipewire pipewire-pulse
systemctl --user status pipewire pipewire-pulse

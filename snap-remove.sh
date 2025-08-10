sudo systemctl stop snapd
sudo apt purge snapd
sudo rm -rf ~/snap /snap /var/snap /var/lib/snapd /var/cache/snapd

echo -e "Package: snapd\nPin: release a=*\nPin-Priority: -10" | sudo tee /etc/apt/preferences.d/nosnap.pref

echo -e '
Package: *
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 1001
' | sudo tee /etc/apt/preferences.d/mozilla-firefox

which snap


pacman -Syu
# System
SYS_PKGS="base linux linux-firmware networkmanager sudo acpid dbus"
pacman -S $SYS_PKGS
systemctl enable acpid avahi-daemon cups.service
systemctl enabl --now systemd-timesyncd.service

# Gnome


# Essential
ESS_PKGS="vim nano htop curl less openssh rsync avahi"
pacman -S $ESS_PKGS

# Yay / Pikaur / AUR wrapper
pacman -S git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ..
rm -r yay
yay -S pikaur

# Flatpak and Snaps
pacman -S flatpak gnome-software
yay -S snapd

# CLI
CLI_TOOLS="tree zip fzf zip unzip whois wget"
pacman -S $CLI_TOOLS

# Development
DEV_TOOLS="python cmake clang nodejs npm jdk-openjdk dotnet-sdk"
pacman -S $DEV_TOOLS
# Daemons
DAE_TOOLS="cronie"
pacman -S $DAE_TOOLS

# Internet
INT_TOOLS="firefox thunderbird discord signal-desktop"
pacman -S $INT_TOOLS

# Productivity
PROD_TOOLS="obsidian cups cups-pdf libreoffice-fresh"
pacman -S $PROD_TOOLS

# Fonts
TTF_FONTS="ttf-liberation ttf-jetbrains-mono ttf-font-awesome nerd-fonts"
pacman -S $TTF_FONTS
yay -S ttf-ms-win11-auto

# Audio / Video
AV_TOOLS="pulseaudio pipewire pipewire-pulse pipewire-jack helvum ffmpeg vlc audacity obs-studio"
pacman -S $AV_TOOLS

# Graphics
# ...

# Gaming
GAMING="steam lutris"
yay -S bottles minigalaxy itch-setup-bin

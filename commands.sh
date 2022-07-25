#!/bin/bash
    # Informational
    cd ~
    ls

    # Making config directories
    mkdir -p .config/bspwm
    mkdir -p .config/sxhkd
    mkdir -p .config/picom
    mkdir -p .config/rofi
    mkdir -p .config/polybar
    mkdir -p $HOME/.config/rofi/launchers/text/styles/
    mkdir -p $HOME/.config/rofi/launchers/text/
    mkdir -p .vim/colors
    mkdir -p .vim/undo
    sudo dnf install sddm bspwm sxhkd -y
    sudo dnf install feh tig polybar nautilus picom xsetroot rofi htop lxappearance -y
    sudo dnf install ranger chromium-browser flameshot openvpn gcc clang mupdf -y
    sudo dnf install fira-code-font -y
    sudo dnf install google-roboto-mono-font -y
    sudo dnf install fontawesome-fonts

    # Install vim related stuff
    cd ~
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    curl -fLo ~/.vim/colors/iceberg.vim --create-dirs https://raw.githubusercontent.com/cocopon/iceberg.vim/master/colors/iceberg.vim
    wget https://raw.githubusercontent.com/outofhere/.dotfiles/master/.vimrc

    # Install Nordic theme for GTK
    #gsettings set org.gnome.desktop.interface gtk-theme "Nordic"
    #gsettings set org.gnome.desktop.wm.preferences theme "Nordic"
    # Install Rust compiler
    curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh 

    #feh --bg-scale 135051.jpg

    # Add non-free RPM repos
    sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
    sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
    sudo usermod -a -G pkg-build $LOGNAME

    # Install spotify discord telegram
    sudo dnf install lpf-spotify-client -y
    sudo dnf install discord -y
    sudo dnf install telegram -y

    #tar xvf Nordic.tar.xz
    #cp -r Nordic /usr/share/sddm/themes/

    # Langpack
    sudo dnf install langpacks-ru.noarch -y

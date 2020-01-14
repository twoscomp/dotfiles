#!/bin/sh

# Print commands
set -x

echo "Installing .oh-my-sh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
echo "Done."

echo "Installing yadm..."
curl -fLo /tmp/yadm.rpm "https://download.opensuse.org/repositories/home:/TheLocehiliosan:/yadm/RHEL_7/noarch/yadm-2.3.0-64.1.noarch.rpm"
sudo rpm -i /tmp/yadm.rpm
echo "Done."

echo "Installing asdf Version Manager..."
git clone https://github.com/asdf-vm/asdf.git ~/.asdf
cd ~/.asdf
git checkout "$(git describe --abbrev=0 --tags)"
cd ~
echo "Done."

echo "Installing asdf-golang..."
asdf plugin-add golang https://github.com/kennyp/asdf-golang.git
echo "Done."

echo "Installing vim-plug..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Done."


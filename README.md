# Dotfiles

## After fresh Ubuntu 20 install (minimal)

**Packages**

```bash
sudo apt-get install git xclip neofetch neovim
# Regolith
sudo add-apt-repository ppa:regolith-linux/release
sudo apt install regolith-desktop
sudo apt install i3xrocks-cpu-usage i3xrocks-time
# Visual Studio Code
sudo snap install --classic code
# Spotify
sudo snap install spotify
# Ranger
sudo apt-get update
sudo apt-get install ranger caca-utils highlight atool w3m poppler-utils mediainfo
# Keepass XC (copy key to Documents location)
sudo snap install keepassxc
# Solarr (for Logiteh)
sudo apt-get install solaar
# Configure scrollwhell
sudo apt install imwheel
```

**Docker**

```bash
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce
# permision for non-root user
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
# docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
```

**Appimagelauncher**

```bash
sudo add-apt-repository ppa:appimagelauncher-team/stable
sudo apt update
sudo apt install appimagelauncher
```

**Pcloud**

Follow instruction from [link](https://www.pcloud.com/how-to-install-pcloud-drive-linux.html) and use Appimagelauncher to integrate it with Ubuntu.

**Import ssh keys**

```bash
# copy or generate ssh key (remember about permisions 600)
# Start the ssh-agent in the background.
eval "$(ssh-agent -s)"
# Add new key
ssh-add ~/.ssh/github_key
```

**Wallpaper**

Copy wallpaper to `/usr/share/backgrounds` and name it `wallpaper.jpg` (remamber about permisisons and owner)

**Spacemacs**

```
sudo snap install emacs --classic
mv ~/.emacs.d ~/.emacs.d.backup
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
```

TODO: My configuration

**Python 3.9**

```
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev

wget https://www.python.org/ftp/python/3.9.1/Python-3.9.1.tgz
tar -xf Python-3.9.1.tgz

cd Python-3.9.1
./configure --enable-optimizations
make -j 4
sudo make altinstall
```

## Config sync

Based on [this](https://www.atlassian.com/git/tutorials/dotfiles).

### Setting up repo

```bash
git init --bare $HOME/.cfg`
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bash_aliases
```

### Working

example:

```bash
config status
config add .vimrc
config commit -m "Sync"
config add .bashrc
config commit -m "Sync"
config push
```

### Init on other system

```bash
git clone --bare git@github.com:pkonarzewski/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

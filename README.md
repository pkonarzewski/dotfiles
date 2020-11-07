# Dotfiles

## After fresh Ubuntu 20 install (minimal)

Packages

```bash
sudo apt-get install git xclip neofetch
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

Docker

```bash
sudo apt-get update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
sudo apt install docker-ce
```

Import ssh keys

```bash
# copy or generate ssh key (remember about permisions 600)
# Start the ssh-agent in the background.
eval "$(ssh-agent -s)"
# Add new key
ssh-add ~/.ssh/github_key
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

### Setting up env

Install linux packages

```
sudo add-apt-repository ppa:regolith-linux/release
sudo apt install regolith-desktop i3xrocks-media-player i3xrocks-cpu-usage i3xrocks-time i3xrocks-memory
```

### Working

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config add .bashrc
config commit -m "Add bashrc"
config push
```

### Init on other system

```bash
git clone --bare <git-repo-url> $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```


OneDrive

based on [this](https://itsfoss.com/use-onedrive-linux-rclone/)

```bash
sudo apt-get install rclone
rclone config
# go through process
mkdir ~/OneDrive
# test
rclone --vfs-cache-mode writes mount "OneDrive":  ~/OneDrive
# if all ok add to Startap Applications
sh -c "rclone --vfs-cache-mode writes mount \"OneDrive\": ~/OneDrive"
```

# http://sourabhbajaj.com/mac-setup/index.html


set -x
set -e

pretty_print() {
  printf "\n%b\n" "$1"
}

echo "======================================================\n CHECK BREW IF INSTALLED \n======================================================"

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "================ INSTALLING HOMEBREW"
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile
fi

brew doctor

# Update homebrew recipes
brew update

# coreutils: GNU core utilities...
# findutils: GNU find, locate, updatedb and xargs...

brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk/openjdk/adoptopenjdk8

echo "======================================================\n INSTALLING BINARIES \n======================================================"

binaries=(
    coreutils
    findutils
    git
    fzf
    ack
    z
    tree
    vim
    nvm
    typescript
    kotlin
    rust
    scala
    maven
    gradle
    sbt
    imagemagick
    mackup
    wget
    zsh
    zsh-completions
    ansible
    httpie
    jq
    kubectl
    kubernetes-helm
    krew
    awscli
    terraform
    watch
    telnet
    stern
    shellcheck
    pandoc
    dive
    minikube
    kubectx
)


printf 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> ~/.bashrc
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

pretty_print "installing binaries..."
brew install ${binaries[@]}
brew cleanup

# https://github.com/robscott/kube-capacity?utm_sq=fzz4jx87q0
brew tap robscott/tap
brew install robscott/tap/kube-capacity

# Homebrew Cask
brew tap homebrew/cask-verions

echo "======================================================\n INSTALLING CASK APPS \n======================================================"

# Apps
apps=(
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    qlprettypatch
    quicklook-csv
    dropbox
    google-chrome
    google-backup-and-sync
    appcleaner
    launchrocket
    firefox
    virtualbox
    vagrant
    vlc
    visual-studio-code
    macdown
    cakebrew
    insomnia
    iterm2
    tor-browser
    rocket-chat
    tunnelblick
    adoptopenjdk11
    mongodb-compass
    teamviewer
    alfred3
    whatsapp
    lunar
    dozer
    fluor
    typora
    balenaetcher
    boostnote
    keystore-explorer
)

brew cask install --appdir="/Applications" ${apps[@]}

echo "======================================================\n INSTALLING FONTS \n======================================================"

brew tap homebrew/cask-fonts

fonts=(
  font-consolas-for-powerline
  font-m-plus
  font-roboto-mono
  font-fira-code
  font-clear-sans
  font-roboto
  font-open-sans
  font-source-sans-pro
  font-lato
  font-alegreya
  font-montserrat
  font-inconsolata
  font-pt-sans
  font-quattrocento-sans
  font-quicksand
  font-raleway
  font-sorts-mill-goudy
  font-ubuntu
)

brew cask install ${fonts[@]}

echo "======================================================\n INSTALLING KREW BINS \n======================================================"


#https://github.com/mstrzele/helm-edit in 03/2020 only for helm 2
helm plugin install https://github.com/mstrzele/helm-edit



pretty_print "We are done!...everthing looks good!"


easy_install Pygments

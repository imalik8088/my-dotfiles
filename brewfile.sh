# http://sourabhbajaj.com/mac-setup/index.html

set -xe

pretty_print() {
  printf "\n%b\n" "$1"
}

echo "======================================================\n CHECK BREW IF INSTALLED \n======================================================"

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "================ INSTALLING HOMEBREW"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/imalik/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew doctor

# Update homebrew recipes
brew update

# coreutils: GNU core utilities...
# findutils: GNU find, locate, updatedb and xargs...

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
    openjdk
    openjdk@11
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
    kubens
    k9s
    php
    pyenv
    virtualenv
    hugo
    git-delta
    macos-trash
    k3d
)


printf 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> ~/.bashrc
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

pretty_print "installing binaries..."
brew install ${binaries[@]}
brew cleanup

# Homebrew Cask
# brew tap homebrew/cask-verions

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
    appcleaner
    little-snitch
    firefox
    vlc
    visual-studio-code
    google-drive
    cakebrew
    insomnia
    iterm2
    tor-browser
    tunnelblick
    mongodb-compass
    alfred
    whatsapp
    lunar
    dozer
    fluor
    typora
    balenaetcher
    keystore-explorer
    1password
    spotify
    slack
    microsoft-teams
    notion
    portfolioperformance
    monitorcontrol
)

brew install --cask ${apps[@]}

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

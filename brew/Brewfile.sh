# http://sourabhbajaj.com/mac-setup/index.html


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

echo "======================================================\n INSTALLING BINARIES \n======================================================"

binaries=(
    coreutils
    findutils
    git
    nvm
    fzf
    ack
    z
    tree
    vim
    imagemagick
    mackup
    wget
    maven
    gradle
    sbt
    scala
    nvm
    jenv
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
)

pretty_print "Installing the most recent verions of some OSX tools"
	brew tap homebrew/dupes
	brew install homebrew/dupes/grep

printf 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> ~/.bashrc
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

pretty_print "installing binaries..."
brew install ${binaries[@]}
brew cleanup


# Homebrew Cask
brew tap caskroom/versions
brew install caskroom/cask/brew-cask

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
    transmission
    cakebrew
    sublime-text
    insomnia
    iterm2
    tor-browser
    rocket-chat
    tunnelblick
    mongodb-compass
    java
    java8
    teamviewer
    minikube
    alfred
    whatsapp
    lunar
)

brew cask install --appdir="/Applications" ${apps[@]}

# apps searchable by alfred 2
brew cask alfred link

# docker layer inpection
brew tap wagoodman/dive
brew install dive

echo "======================================================\n INSTALLING FONTS \n======================================================"

brew tap caskroom/fonts

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


pretty_print "We are done!...everthing looks good!"


easy_install Pygments

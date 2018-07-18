# http://sourabhbajaj.com/mac-setup/index.html
# install brew binaries and casks

pretty_print() {
  printf "\n%b\n" "$1"
}

#############################################
# BINARIES
#############################################

# Check for Homebrew,
# Install if we don't have it
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo 'export PATH="/usr/local/bin:$PATH"' >> ~/.bash_profile

brew doctor

# Update homebrew recipes
brew update

# coreutils: GNU core utilities...
# findutils: GNU find, locate, updatedb and xargs...

# Homebrew Binararies
binaries=(
    coreutils
    findutils
    git
    nvm
    fzf
    ack
    z
    sysdig
    tree
    mysql
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
)

pretty_print "Installing the most recent verions of some OSX tools"
	brew tap homebrew/dupes
	brew install homebrew/dupes/grep

printf 'export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"' >> ~/.bashrc
export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

pretty_print "installing binaries..."
brew install ${binaries[@]}
brew cleanup


#############################################
# CASKS
#############################################

# Homebrew Cask
brew tap caskroom/versions
brew install caskroom/cask/brew-cask


# Apps
apps=(
    qlcolorcode
    qlstephen
    qlmarkdown
    quicklook-json
    qlprettypatch
    quicklook-csv
    betterzipql
    dropbox
    google-chrome
    google-drive
    appcleaner
    launchrocket
    firefox
    virtualbox
    vagrant
    vlc
    visual-studio-code
    macdown
    evernote
    skype
    transmission
    cd-to
    cakebrew
    slack
    sublime-text
    zsh
    zsh-completions
    insomnia
    iterm2
    torbrowser
    telegram-desktop
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# apps searchable by alfred 2
brew cask alfred link

# Diff toll for mac
brew install homebrew/x11/meld

#############################################
# FONTS
#############################################

brew tap caskroom/fonts

fonts=(
  font-m-plus
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

# install fonts
echo "installing fonts..."
brew cask install ${fonts[@]}


# Dev tools

tools=(
    java8
    java
)

# install tools
echo "--------------------- installing tools..."
brew cask install ${tools[@]}


pretty_print "We are done!...everthing looks good!"

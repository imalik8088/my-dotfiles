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

# Update homebrew recipes
brew update

# coreutils: GNU core utilities...
# findutils: GNU find, locate, updatedb and xargs...

# Homebrew Binararies
binaries=(
		coreutils
		findutils
    git
    node
    tree
    postgresql
    mysql
    vim
    imagemagick
    mackup
    redis
    wget
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
  transmit
  google-hangouts
  google-drive
  appcleaner
  gitx
  launchrocket
  firefox
  spotify
  vagrant
  sequel-pro
  flash
  virtualbox
  sketch
  vlc
  cloudup
  mou
  evernote
  skype
  transmission
  archiver
  eclipse-jee
  teamviewer
  vox
)

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps..."
brew cask install --appdir="/Applications" ${apps[@]}

# apps searchable by alfred 2
brew cask alfred link




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


pretty_print "We are done!...everthing looks good!"





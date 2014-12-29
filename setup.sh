pretty_print() {
  printf "\n%b\n" "$1"
}


pretty_print "Setup gemrc for default options"
  if [ ! -f ~/.gemrc ]; then
    printf 'gem: --no-document' >> ~/.gemrc
  fi


# copy profile files
cp bash/bash_profile ~/.bash_profile
cp bash/bashrc ~/.bashrc
cp git/gitconfig ~/.gitconfig
cp git/gitignore ~/.gitignore
cp git/git-completion.sh ~/.git-completion.sh

# call scripts for configuring the osx and packages
./osx/confs.sh
./brew/Brewfile.sh
./npm/global-packages.sh


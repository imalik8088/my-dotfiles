pretty_print() {
  printf "\n%b\n" "$1"
}

sudo chown -R $(whoami) ~/.npm


packages=(
	nodemon
	typescript
	tldr
	yarn
	serve
	bower
)

pretty_print "npm packages..."
	npm install -g ${packages[@]}


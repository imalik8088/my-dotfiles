pretty_print() {
  printf "\n%b\n" "$1"
}

sudo chown -R $(whoami) ~/.npm


packages=(
	grunt-cli
	gulp
	coffeescript
	node-dev
	bower
)

pretty_print "npm packages..."
	npm install -g ${packages[@]}


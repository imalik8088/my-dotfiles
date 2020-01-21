sudo chown -R $(whoami) ~/.npm

packages=(
	nodemon
	tldr
	serve
	serverless
)

echo "======================================================\n [NPM] INSTALLING GLOABAL PACKAGES \n======================================================"
	npm install -g ${packages[@]}


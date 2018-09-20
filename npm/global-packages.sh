sudo chown -R $(whoami) ~/.npm

packages=(
	nodemon
	tldr
	yarn
	serve
	serverless
)

echo "======================================================\n [NPM] INSTALLING GLOABAL PACKAGES \n======================================================"
	npm install -g ${packages[@]}


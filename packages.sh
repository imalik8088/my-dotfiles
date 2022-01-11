nvm install --lts
# set the default with: 
# nvm alias default _LTS_VERSION_

sudo chown -R $(whoami) ~/.npm

packages=(
	nodemon
	tldr
	serve
	typescript
)

echo "======================================================\n [NPM] INSTALLING GLOABAL PACKAGES \n======================================================"
	npm install -g ${packages[@]}


# python
# https://opensource.com/article/19/5/python-3-default-mac

pyenv install 3.10.1
pyenv global 3.10.1



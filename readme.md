## install steps for new mac setup

```bash
./osxprep.sh        # update the system and install xcode command line tools
./macos.sh          # changing default behaviour of mac os to personal one
./brewfile.sh       # install apps and cli tools
./node-g-pkg.sh     # install global npm packages
```

## Configure Mac
1. install [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh#basic-installation)
2. login to Dropbox 
3. create sym link with `ln -s ~/Dropbox/Mackup/.mackup.cfg ~/.mackup.cfg` 
4. Install [Docker for Mac](https://download.docker.com/mac/stable/Docker.dmg)
5. mackup restore


### personal hints

- install docker from https://download.docker.com/mac/stable/Docker.dmg
- install little snitch from https://www.obdev.at/products/littlesnitch/download-previous-versions.html
- https://support.logitech.com/de_at/product/mx-master/downloads
- https://medium.com/@mo_keefe/a-kubernetes-development-workflow-for-macos-8c41669a4518


#### _inspired my_: 
* https://github.com/donnemartin/dev-setup/

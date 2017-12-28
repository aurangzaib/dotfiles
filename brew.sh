#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Tapping branches of brew
brew tap homebrew/science
brew tap caskroom/cask
brew install caskroom/cask/brew-cask
brew tap homebrew/versions
brew update; brew upgrade

# Dev Tools
xcode-select --all
brew install qt
brew install libxml2
brew cask install xquartz
brew install opencv3
brew install --HEAD libuv
brew install gcc
brew install ffmpeg
brew install make 
brew install wget 
brew install convertlit 
brew install imagemagick 
brew install boost 
brew install ruby 
brew install protobuf
brew install cppad
brew install ipopt --with-openblas
wget http://repo.continuum.io/miniconda/Miniconda3-latest-MacOSX-x86_64.sh -O ~/miniconda.sh

# System Tools
brew install git
brew install diff-so-fancy
brew install imagemagick --with-webp
brew install lua
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install speedtest_cli
brew install tree
brew install mp3wrap
brew install wifi-password
brew install ccat
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install moreutils
brew install findutils
brew install gnu-sed --with-default-names
brew install bash
brew install bash-completion
brew install zlib
brew install wget --with-iri
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install binutils
brew install nmap
brew install pngcheck
brew install sqlmap

# Userland Tools
brew cask install google-chrome
brew cask install sourcetree
brew cask install skype
brew cask install clion
brew cask install pycharm
brew cask install webstorm
brew cask install visual-studio-code
brew cask install postman
brew cask install shady
brew cask install docker
brew cask install slack
brew cask install virtualbox
brew cask install macdown
brew cask install iina
brew install docker
brew cask install macdown
brew cask install whatsapp
brew install youtube-dl
brew install soundcloud-dl


# Remove outdated versions from the cellar.
brew cleanup
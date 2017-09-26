#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade
# common tools
brew install make wget convertlit imagemagick boost

# Tapping branches of brew
brew tap homebrew/science
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

# opencv
brew install opencv3

# Google Chrome
brew cask install google-chrome

# Sourcetree
brew cask install sourcetree

# Skype
brew cask install skype

# Jetbrains
brew cask install clion
brew cask install pycharm
brew cask install webstorm

# Visual Studio Code
brew cask install visual-studio-code

# Postman
brew cask install postman

# Shady
brew cask install shady

# Docker
brew cask install docker

# Slack
brew cask install slack

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# ffmpeg to convert mp4 to mp3 etc
brew install ffmpeg

# download youtube videos
brew install youtube-dl

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php55 --with-gmp

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install binutils
brew install nmap
brew install pngcheck
brew install sqlmap
# brew install tcpflow
# brew install tcpreplay
brew install tcptrace
brew install xpdf

# Install other useful binaries.
#brew install ack
#brew install exiv2
brew install git
brew install imagemagick --with-webp
brew install lua
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install speedtest_cli
brew install tree
brew install ant

# Remove outdated versions from the cellar.
brew cleanup


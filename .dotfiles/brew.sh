#!/usr/bin/env bash

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Update brew
brew update

# Upgrade installed packages
brew upgrade

# Install bash
brew install bash
brew tap homebrew/versions
brew install bash-completion2

# Install pyenv
brew install pyenv
echo 'eval "$(pyenv init -)"' >> ~/.profile

# Install rbenv
brew install rbenv
rbenv init
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile

# Install nodenv
brew install nodenv
echo 'eval "$(nodenv init -)"' >> ~/.profile

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install other useful binaries.
brew install wget --with-iri
brew install tree
# Commandline Pandora
brew install pianobar
brew install imagemagick --with-webp
brew install lua
#Commandline port of 7zip
brew install p7zip
# parallel gzip
brew install pigz
brew install ack
brew install dark-mode
#brew install exiv2
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install ssh-copy-id
brew install testssl
brew install tree
brew install webkit2png
brew install zopfli
# generic colouriser  http://kassiopeia.juls.savba.sk/~garabik/software/grc/
brew install grc
brew install ffmpeg --with-libvpx

# Remove outdated versions from the cellar.
brew cleanup
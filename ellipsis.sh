#!/usr/bin/env bash
#
# tbjers/dot-node ellipsis package

pkg.install() {
  case $(os.platform) in
    osx)
      brew install yarn --without-node
      brew install watchman
      ;;
  esac
  utils.run_installer 'https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh'
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
  nvm install lts/argon
  nvm install lts/carbon
  nvm alias stable lts/carbon
  nvm alias default stable
  nvm alias system stable
}

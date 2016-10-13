#!/usr/bin/env bash
#
# tbjers/dot-node ellipsis package

pkg.install() {
  case $(os.platform) in
    osx)
    linux)
      utils.run_installer 'https://raw.githubusercontent.com/creationix/nvm/v0.32.0/install.sh'
      export NVM_DIR="$HOME/.nvm"
      [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
      nvm install lts/argon
      nvm alias stable lts/argon
      nvm alias default stable
      nvm alias system stable
      ;;
}

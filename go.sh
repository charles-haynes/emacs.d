#! /usr/bin/env /bin/bash

git clone https://github.com/dominikh/yasnippet-go yasnippet-go \
    || (cd yasnippet-go && git pull --rebase)

if [[ -x .cask/bin/cask ]] ;then
    .cask/bin/cask upgrade --verbose
    .cask/bin/cask update --verbose
else
    git clone https://github.com/cask/cask.git .cask
    .cask/bin/cask install --verbose
fi


#! /usr/bin/env /bin/bash

set -ex

go get github.com/godoctor/godoctor golang.org/x/tools/cmd/...
go install github.com/godoctor/godoctor golang.org/x/tools/cmd/guru

go get -u gopkg.in/alecthomas/gometalinter.v1
gometalinter --install --update

git clone https://github.com/dominikh/yasnippet-go yasnippet-go \
    || (cd yasnippet-go && git pull --rebase)

yarn global add js-beautify

emacs --batch --eval '(byte-recompile-directory "~/.emacs.d" 0)'

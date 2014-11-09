(setq load-path
      (cons (expand-file-name "~/.emacs.d/") load-path))

(setq custom-file (expand-file-name "~/.emacs.d/emacs-custom.el"))

(require 'emacs-custom)
(require 'emacs-functions)
(require 'emacs-keybindings)

(require
 'cask "~/.emacs.d/.cask/24.4.1/elpa/cask-20141026.1127/cask.el"
 )
(cask-initialize)

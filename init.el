;;; package --- init
;;; Commentary:
;;; Code:
(setq load-path
      (cons (expand-file-name "~/.emacs.d/") load-path))

(require 'cask "~/.emacs.d/.cask/24.4.1/elpa/cask-20141026.1127/cask.el")
(cask-initialize)

(setq custom-file (expand-file-name "~/.emacs.d/emacs-custom.el"))

(require 'emacs-custom)
(require 'emacs-functions)
(require 'emacs-keybindings)
;;; init ends here

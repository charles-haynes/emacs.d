;;; package --- init
;;; Commentary:
;;; Code:
(setq load-path
      (cons (expand-file-name "~/.emacs.d/") load-path))

(require 'cask "~/.emacs.d/.cask/24.4.1/elpa/cask-20141109.309/cask.el")
(cask-initialize)

(setq custom-file (expand-file-name "~/.emacs.d/emacs-custom.el"))

(require 'emacs-custom)
(require 'emacs-automode)
(require 'emacs-functions)
(require 'emacs-hooks)
(require 'emacs-keybindings)

(setq visible-bell nil
      ring-bell-function 'no-ding-filter)

(put 'narrow-to-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(server-start)
;;; init ends here

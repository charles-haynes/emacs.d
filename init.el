;;; package --- init
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp"))

(require 'cask "~/.emacs.d/.cask/24.4.1/elpa/cask-20141109.309/cask.el")
(cask-initialize)

(setq custom-file (expand-file-name "~/.emacs.d/my-lisp/emacs-custom.el"))

;;;;;;;;;;;;;;;;;;;;;;
;;;
;;;  TODO
;;;
;;;;;;;;;;;;;;;;;;;;;;

                                        ; flycheck python mode
                                        ; autocomplete? (hippie mode already? not needed?)
                                        ; icicle

;;;;;;;;;;;;;;;;;;;;;;

(require 'emacs-custom)
(require 'emacs-automode)
(require 'emacs-functions)
(require 'emacs-hooks)
(require 'emacs-keybindings)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)
(put 'set-goal-column 'disabled nil)

;;; init ends here

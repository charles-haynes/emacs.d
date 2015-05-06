;;; package --- init
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp"))

;; in a new installation do
; brew install cask
; cask install

(require 'cask "/usr/local/Cellar/cask/0.7.2/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(setq custom-file (expand-file-name "~/.emacs.d/my-lisp/emacs-custom.el"))

;;; set $MANPATH, $PATH and exec-path from your shell, but only on OS X
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

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

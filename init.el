;;; package --- init
;;; Commentary:
;;; Code:

(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp"))

;; in a new installation do
; brew install cask
; cask install

(require 'cask "~/.emacs.d/.cask/cask.el")
(cask-initialize)
(require 'pallet)
(pallet-mode t)

(setq custom-file (expand-file-name "~/.emacs.d/my-lisp/emacs-custom.el"))

;;; set $MANPATH, $PATH and exec-path from your shell, but only on OS X
(when (memq window-system '(mac ns))
  (progn
    (exec-path-from-shell-initialize)
    ; add homebrew dirs to path
    (let ((default-directory "/usr/local/share/emacs/site-lisp/"))
      (normal-top-level-add-subdirs-to-load-path))
    ))

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

;;; init ends here

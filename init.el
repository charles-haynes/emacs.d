;;; package --- init
;;; Commentary:
;;; Code:


(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(require 'use-package)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp"))

;; in a new installation do
; bash -x go.sh

(setq use-package-always-ensure t)
(use-package auto-complete)
(use-package bind-key)
(use-package color-theme)
(use-package dash)
(use-package default-text-scale)
(use-package drag-stuff)
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))
(use-package expand-region)
(use-package f)
(use-package flycheck)
(use-package flycheck-pos-tip) ;; tooltip at pos
(use-package go-autocomplete)
(use-package go-eldoc)
(use-package go-mode)
(use-package go-guru)
(use-package htmlize)
(use-package idle-highlight-mode)
(use-package js2-mode)
(use-package json-mode)
(use-package magit)
(use-package markdown-mode)
(use-package markdown-mode+)
(use-package multiple-cursors)
(use-package nyan-mode)
(use-package org)
(use-package popwin)
(use-package prodigy)
(use-package projectile)
(use-package python-mode)
(use-package s)
(use-package smartparens)
(use-package smex)
(use-package uuidgen)
(use-package web-mode)
(use-package yaml-mode)
(use-package yasnippet)


(setq custom-file (expand-file-name "~/.emacs.d/my-lisp/emacs-custom.el"))

;;; set $MANPATH, $PATH and exec-path from your shell, but only on OS X
(when (memq window-system '(mac ns))
  (progn
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

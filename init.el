;;; package --- init
;;; Commentary:
;;; Code:


(require 'package)
(setq package-archives
 '(("melpa-stable" . "http://stable.melpa.org/packages/")
   ("melpa" . "http://melpa.org/packages/")
   ("marmalade"   . "http://marmalade-repo.org/packages/")
   ("org"         . "http://orgmode.org/elpa/")
   ("gnu"         . "http://elpa.gnu.org/packages/")))

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; https://github.com/jwiegley/use-package/issues/219
;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Use use-package now

;; https://github.com/jwiegley/use-package#use-packageel-is-no-longer-needed-at-runtime
(eval-when-compile
  (require 'use-package))
(require 'diminish)
(require 'bind-key)

(add-to-list 'load-path (expand-file-name "~/.emacs.d/my-lisp"))

;; in a new installation do
;; bash -x go.sh

(setq use-package-always-ensure t)
(use-package auto-complete)
(use-package cc-mode
  :mode (
         "\\.cpp\\'"
         "\\.h\\'"
         "\\.ino\\'"))
(use-package color-theme)
(use-package coffee-mode
  :mode (
         "Cakefile\\'"
         "\\.coffee\\'"))
(use-package csharp-mode
  :mode "\\.cs\\'")
(use-package css-mode
  :bind (:map css-mode-map ("C-c b" . web-beautify-css))
  :mode (
         "\\.css\\'"
         "\\.sass\\'"
         "\\.scss\\'"))
(use-package default-text-scale)
(use-package exec-path-from-shell
  :if (memq window-system '(mac ns))
  :ensure t
  :config
  (exec-path-from-shell-initialize))
(use-package expand-region
  :bind (("C-." . er/expand-region)
         ("C-," . er/contract-region)
         ("<C-S-right>" . er/expand-region)
         ("<C-S-left>" . er/contract-region)))
(use-package flycheck
  :config
  (use-package flycheck-pos-tip) ;; tooltip at pos
  (defun my/use-eslint-from-node-modules ()
    "Look for eslint in current dir and all parents."
    (let* ((root (locate-dominating-file
                  (or (buffer-file-name) default-directory)
                  "node_modules"))
           (eslint (and root
                        (expand-file-name "node_modules/eslint/bin/eslint.js"
                                          root))))
      (when (and eslint (file-executable-p eslint))
        (setq-local flycheck-javascript-eslint-executable eslint))))

  (add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)
  (flycheck-add-mode 'javascript-eslint 'web-mode)
  (flycheck-pos-tip-mode)
  )

(use-package go-autocomplete
  :config
  (require 'auto-complete-config)
  (ac-config-default))
(use-package go-mode
  :mode "\\.go\\'"
  :config
  ;; (use-package flycheck-gometalinter
  ;;   :config
  ;;   (flycheck-gometalinter-setup))
  (use-package go-eldoc)
  (use-package go-guru)
  (use-package godoctor)
  (defun my-go-mode-hook ()
    "Various tweaks to make go-mode nicer."
    ;; make go compile do a go install
    (lambda () (set (make-local-variable 'compile-command) "go install -x -v"))
    ;; Call Gofmt before saving
    (add-hook 'before-save-hook 'gofmt-before-save)
    ;; Godef jump key binding
    (local-set-key (kbd "M-.") 'godef-jump)
    (local-set-key (kbd "M-*") 'pop-tag-mark)
    ;; autocomplete
    ;; (ac-config-default)
    (auto-complete-mode 1)
    ;; eldoc (show type info at point)
    (go-eldoc-setup))
  (add-hook 'go-mode-hook 'my-go-mode-hook))
(use-package htmlize)
(use-package idle-highlight-mode)
(use-package json-mode
  :mode "\\.json\\'"
  :bind (:map json-mode-map ("C-c b" . web-beautify-js)))
(use-package magit
  :bind ("C-x g" . magit-status))
(use-package markdown-mode
  :mode (
         "\\.gfm\\'"
         "\\.markdown\\'"
         "\\.md\\'"
         "\\.text\\'"
         "\\.txt\\'"))
(use-package markdown-mode+)
(use-package multiple-cursors
  :bind (("C-S-c C-S-c" . mc/edit-lines)
         ("C->" . mc/mark-next-like-this)
         ("C-<" . mc/mark-previous-like-this)
         ("<C-S-down>" . mc/mark-next-like-this)
         ("<C-S-up>" . mc/mark-previous-like-this)
         ("C-c C-<" . mc/mark-all-like-this)
         ("<s-mouse-1>" . mc/add-cursor-on-click)))
(use-package nxml
  :mode (
         ("\\.xhtml\\'" . nxml-mode)
         ("\\.xml\\'" . nxml-mode)
         ("\\.xsd\\'" . nxml-mode))
  :config
  (add-to-list 'magic-mode-alist '("<＼＼?xml " . nxml-mode)))
(use-package nyan-mode)
(use-package org
  :mode "\\.org\\'")
(use-package popwin)
(use-package projectile)
(use-package python
  :interpreter ("python" . python-mode)
  :mode ("\\.py" . python-mode))
(use-package rjsx-mode
  :mode (
         "\\.js\\'"
         "\\.jsx\\'")
  :bind (:map rjsx-mode-map ("C-c b" . web-beautify-js)))
(use-package ruby-mode
  :mode (
         "Gemfile\\'"
         "RAKEFILE\\'"
         "Rakefile\\'"
         "rakefile\\'"
         "\\.gemspec\\'"
         "\\.rake\\'"
         "\\.rb\\'"
         "\\.spec\\'")
  :interpreter "ruby")
(use-package s)
(use-package sgml-mode
  :bind (:map html-mode-map ("C-c b" . web-beautify-html))
  :mode ("\\.html\\'" . html-mode))
(use-package sh-script
  :interpreter (
                ("ash" . sh-mode)
                ("bash" . sh-mode)
                ("csh" . sh-mode)
                ("sh" . sh-mode)
                ("zsh" . sh-mode))
  :mode (
         ("\\.ash\\'" . sh-mode)
         ("\\.bash\\'" . sh-mode)
         ("\\.csh\\'" . sh-mode)
         ("\\.sh\\'" . sh-mode)
         ("\\.zsh\\'" . sh-mode)))
(use-package smartparens)
(use-package smex
  :bind (("M-x" . smex)
         ("M-X" . smex-major-mode-commands)
         ("C-c C-c M-x" . execute-extended-command))) ;; old M-x .
(use-package sql
  :mode ("\\.sql\\'" . sql-mode))
(use-package uuidgen)
(use-package web-beautify)
(use-package web-mode)
(use-package yaml-mode
  :mode ("\\.yaml\\'" "\\.yml\\'"))
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
(require 'emacs-functions)
(require 'emacs-keybindings)

;;; init ends here

;;; emacs-custom --- separate "customize" file
;;; Commentary:
;;; Code:

(setq custom-file load-file-name)

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(put 'set-goal-column 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-insert-mode t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/backups"))))
 '(column-number-mode t)
 '(compare-ignore-case t)
 '(compare-ignore-whitespace t)
 '(custom-enabled-themes (quote (ceh-light)))
 '(custom-safe-themes
   (quote
    ("3dd327d67b43f64d25eb1c1a0e37534de82dec57ab0a8beb8cfc67f83eb12f04" "bf0d80e3ff1181d1d1e81beb7a6bebadf9c1502ae745a4b8807f0f9c4bb48846" default)))
 '(custom-theme-directory "~/.emacs.d/my-lisp")
 '(display-time-day-and-date t)
 '(display-time-default-load-average nil)
 '(display-time-mode t)
 '(ediff-merge-split-window-function (quote split-window-vertically))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(electric-pair-mode t)
 '(face-font-family-alternatives
   (quote
    (("Monospace" "courier" "fixed")
     ("Courier New" "courier" "Monospace" "CMU Typewriter Text" "fixed")
     ("Open Sans" "Sans Serif" "helv" "helvetica" "arial" "fixed")
     ("helv" "helvetica" "arial" "fixed"))))
 '(flycheck-disabled-checkers (quote (javascript-jshint)))
 '(flycheck-gometalinter-deadline "10s")
 '(flycheck-gometalinter-disable-linters (quote ("gotype")))
 '(flycheck-gometalinter-fast t)
 '(global-ede-mode t)
 '(global-flycheck-mode t nil (flycheck))
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(gofmt-command "goimports")
 '(ido-use-virtual-buffers (quote auto))
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(js-indent-level 2)
 '(js2-basic-offset 2)
 '(line-number-display-limit 9999)
 '(line-number-mode t)
 '(magit-diff-refine-hunk (quote all))
 '(make-backup-files nil)
 '(markdown-command "/usr/local/bin/pandoc")
 '(menu-bar-mode nil)
 '(next-line-add-newlines t)
 '(package-selected-packages
   (quote
    (helm godoctor go-guru go-eldoc yasnippet yaml-mode web-mode web-beautify uuidgen use-package smex smartparens s rjsx-mode projectile popwin nyan-mode multiple-cursors markdown-mode+ magit json-mode idle-highlight-mode htmlize go-mode go-autocomplete flycheck-pos-tip expand-region exec-path-from-shell default-text-scale csharp-mode coffee-mode)))
 '(pallet-mode t)
 '(require-final-newline t)
 '(revert-without-query (quote (".")))
 '(safe-local-variable-values
   (quote
    ((eval setq flycheck-clang-include-path
           (list
            (expand-file-name "~/projects/personal/Arduino/libraries/FastLED-3.1.3")
            (expand-file-name "~/projects/personal/Arduino/libraries/Time")
            (expand-file-name "~/projects/personal/Arduino/libraries/TimeAlarms")
            (expand-file-name "~/Library/Arduino15/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/include")
            (expand-file-name "~/Library/Arduino15/packages/esp8266/hardware/esp8266/2.3.0/tools/sdk/lwip/include")
            (expand-file-name "~/Library/Arduino15/packages/esp8266/hardware/esp8266/2.3.0/cores/esp8266")
            (expand-file-name "~/Library/Arduino15/packages/esp8266/hardware/esp8266/2.3.0/variants/nodemcu"))))))
 '(semantic-mode t)
 '(semantic-stickyfunc-indent-string "")
 '(server-done-hook (quote ((lambda nil (delete-frame)))))
 '(server-switch-hook
   (quote
    ((lambda nil
       (let
           ((server-buf
             (current-buffer)))
         (bury-buffer)
         (switch-to-buffer-other-frame server-buf))))))
 '(show-paren-mode t)
 '(smooth-scroll-margin 3)
 '(tool-bar-mode nil)
 '(track-eol t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify))
 '(vc-handled-backends nil)
 '(web-mode-code-indent-offset 2)
 '(web-mode-css-indent-offset 2)
 '(web-mode-markup-indent-offset 2)
 '(whitespace-style
   (quote
    (face tabs spaces trailing lines-tail space-before-tab newline indentation empty space-after-tab space-mark tab-mark newline-mark))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'emacs-custom)
;;; emacs-custom ends here

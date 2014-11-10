(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-insert-mode t)
 '(column-number-mode t)
 '(ediff-merge-split-window-function (quote split-window-vertically))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(electric-pair-mode t)
 '(global-ede-mode t)
 '(global-flycheck-mode t nil (flycheck))
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(ido-use-virtual-buffers (quote auto))
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(line-number-display-limit 10000)
 '(line-number-mode t)
 '(magit-diff-refine-hunk (quote all))
 '(make-backup-files nil)
 '(menu-bar-mode nil)
 '(next-line-add-newlines t)
 '(pallet-mode t)
 '(require-final-newline t)
 '(semantic-mode t)
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
 '(tool-bar-mode nil)
 '(track-eol t)
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))

(provide 'emacs-custom)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-hspace ((t (:background "black" :foreground "brightblack"))))
 '(whitespace-newline ((t (:foreground "#222222" :weight normal))))
 '(whitespace-tab ((t (:background "black" :foreground "#222222")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ediff-merge-split-window-function (quote split-window-vertically))
 '(ediff-split-window-function (quote split-window-horizontally))
 '(electric-pair-mode t)
 '(global-ede-mode t)
 '(global-linum-mode t)
 '(global-whitespace-mode t)
 '(ido-use-virtual-buffers (quote auto))
 '(inhibit-startup-screen t)
 '(initial-scratch-message nil)
 '(line-number-mode t)
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
         (switch-to-buffer-other-frame server-buf)))))))

(provide 'emacs-custom)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-hspace ((t (:background "black" :foreground "brightblack"))))
 '(whitespace-newline ((t (:foreground "#222222" :weight normal))))
 '(whitespace-space ((t (:background "black" :foreground "#222222")))))

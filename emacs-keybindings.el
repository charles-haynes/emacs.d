;; global keybindings
(global-set-key "\C-^" 'delete-indentation)
(global-set-key "\C-xg" 'magit-status)
(global-set-key "\C-xm" 'compile)
(global-set-key "\C-x\C-g" 'grep)
(global-set-key [f4] 'revert-buffer)    ; F4
(global-set-key "\C-a" 'smart-beginning-of-line)

;;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;;; (global-set-key "<left-margin><drag-mouse-1>" 'mouse-set-region)
;;; (global-set-key "<left-margin><down-mouse-1>" 'mouse-set-region)

(provide 'emacs-keybindings)

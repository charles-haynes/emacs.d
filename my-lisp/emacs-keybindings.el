;;; pacakge --- emacs-keybindings
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-^") 'delete-indentation)
(global-set-key (kbd "C-/") 'delete-trailing-whitespace)
(global-set-key (kbd "C-\\") 'fixup-whitespace)
(global-set-key (kbd "C-x m") 'compile)
(global-set-key (kbd "C-x C-g") 'grep)
(global-set-key (kbd "<f4>") 'revert-buffer)
(global-set-key (kbd "C-a") 'smart-beginning-of-line)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

(global-set-key (kbd "C-c l") 'sort-lines)
(global-set-key (kbd "C-c w") 'sort-words)
(global-set-key (kbd "C-c s") 'sort-symbols)

(global-set-key (kbd "<left-fringe><drag-mouse-1>") 'mouse-set-region)
(global-set-key (kbd "<left-fringe><down-mouse-1>") 'mouse-set-region)
(global-set-key (kbd "<left-margin><drag-mouse-1>") 'mouse-set-region)
(global-set-key (kbd "<left-margin><down-mouse-1>") 'mouse-set-region)

;;; default-text-scale
(global-set-key (kbd "s-+") 'default-text-scale-increase)
(global-set-key (kbd "s--") 'default-text-scale-decrease)

(provide 'emacs-keybindings)
;;; emacs-keybindings ends here

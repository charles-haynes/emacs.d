;;; pacakge --- emacs-keybindings
;;; Commentary:
;;; Code:

(global-set-key (kbd "C-^") 'delete-indentation)
(global-set-key (kbd "C-/") 'delete-trailing-whitespace)
(global-set-key (kbd "C-x g") 'magit-status)
(global-set-key (kbd "C-x m") 'compile)
(global-set-key (kbd "C-x C-g") 'grep)
(global-set-key (kbd "<f4>") 'revert-buffer)
(global-set-key (kbd "C-a") 'smart-beginning-of-line)
(global-set-key (kbd "s-/") 'comment-or-uncomment-region)

;;; smex
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

(global-set-key (kbd "<left-fringe><drag-mouse-1>") 'mouse-set-region)
(global-set-key (kbd "<left-fringe><down-mouse-1>") 'mouse-set-region)
(global-set-key (kbd "<left-margin><drag-mouse-1>") 'mouse-set-region)
(global-set-key (kbd "<left-margin><down-mouse-1>") 'mouse-set-region)

;; expand-region
(global-set-key (kbd "C-.") 'er/expand-region)
(global-set-key (kbd "C-,") 'er/contract-region)
(global-set-key (kbd "<C-S-right>") 'er/expand-region)
(global-set-key (kbd "<C-S-left>") 'er/contract-region)

;; multiple-cursor
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "<C-S-down>") 'mc/mark-next-like-this)
(global-set-key (kbd "<C-S-up>") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
(global-set-key (kbd "<s-mouse-1>") 'mc/add-cursor-on-click)

;;; web-beautify
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))
(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))

(provide 'emacs-keybindings)
;;; emacs-keybindings ends here

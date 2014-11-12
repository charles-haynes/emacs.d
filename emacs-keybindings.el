;;; pacakge --- emacs-keybindings
;;; Commentary:
;;; Code:

(global-set-key "\C-^" 'delete-indentation)
(global-set-key "\C-xg" 'magit-status)
(global-set-key "\C-xm" 'compile)
(global-set-key "\C-x\C-g" 'grep)
(global-set-key [f4] 'revert-buffer)    ; F4
(global-set-key "\C-a" 'smart-beginning-of-line)
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

;; multiple cursor
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

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

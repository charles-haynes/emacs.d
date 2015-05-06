;;; pacakge --- emacs-hooks
;;; Commentary:
;;; Code:

;;; web-beautify
(eval-after-load 'js2-mode
  '(define-key js2-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'json-mode
  '(define-key json-mode-map (kbd "C-c b") 'web-beautify-js))
(eval-after-load 'sgml-mode
  '(define-key html-mode-map (kbd "C-c b") 'web-beautify-html))
(eval-after-load 'css-mode
  '(define-key css-mode-map (kbd "C-c b") 'web-beautify-css))
(add-hook 'go-mode-hook
  (lambda () (set (make-local-variable 'compile-command) "go build")))
(add-hook 'before-save-hook 'gofmt-before-save)

(provide 'emacs-hooks)
;;; emacs-hooks ends here

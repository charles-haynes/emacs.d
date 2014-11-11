;;; ceh-light-theme.el --- my personal light color theme
;;; Commentary:
;;; Code:

(deftheme ceh-light
  "Created 2014-11-11.")

(custom-theme-set-variables
 'ceh-light
 )

(custom-theme-set-faces
 'ceh-light
  '(diff-changed ((t (:foreground "Blue"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "dark red" :strike-through t))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 2.8))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 2.0))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.4))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face))))
 '(markdown-inline-code-face ((t (:inherit font-lock-constant-face :family "courier"))))
  '(whitespace-hspace ((t (:background "black" :foreground "brightblack"))))
 '(whitespace-line ((t (:underline (:color "Brown" :style wave)))))
 '(whitespace-newline ((t (:background "LightYellow" :foreground "lightgray" :weight normal))))
 '(whitespace-tab ((t (:background "black" :foreground "#222222")))))
'(diff-added ((t (:inherit diff-changed :foreground "green4"))))
(provide-theme 'ceh-light)
;;; ceh-light-theme.el ends here

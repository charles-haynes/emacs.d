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
'(default ((t (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "nil" :family "Open Sans"))))
 '(error ((t (:foreground "#cc0000"))))
 '(diff-added ((t (:inherit diff-changed :foreground "green4"))))
 '(diff-changed ((t (:foreground "Blue"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "dark red" :strike-through t))))
 '(fixed-pitch ((t (:family "Courier New"))))
 '(markdown-header-face-1 ((t (:inherit markdown-header-face :height 2.8))))
 '(markdown-header-face-2 ((t (:inherit markdown-header-face :height 2.0))))
 '(markdown-header-face-3 ((t (:inherit markdown-header-face :height 1.4))))
 '(markdown-header-face-4 ((t (:inherit markdown-header-face))))
 '(markdown-inline-code-face ((t (:inherit font-lock-constant-face :family "courier"))))
 '(success ((t (:foreground "#008800"))))
 '(trailing-whitespace ((t (:box (:line-width 1 :color "#880000")))))
 '(variable-pitch ((t (:family "Open Sans"))))
 '(warning ((t (:foreground "#dd8800"))))
 '(whitespace-hspace ((t (:background "black" :foreground "brightblack"))))
 '(whitespace-line ((t (:underline (:color "Brown" :style wave)))))
 '(whitespace-newline ((t (:background "LightYellow" :foreground "lightgray" :weight normal))))
 '(whitespace-tab ((t (:background "black" :foreground "#222222"))))
 '(whitespace-trailing ((t (:background "#ffdddd" :foreground "LightYellow" :box (:line-width 1 :color "#880000")))))
 '(window-divider-first-pixel ((t (:foreground "gray60"))))
 '(window-divider-last-pixel ((t (:foreground "gray60")))))
(provide-theme 'ceh-light)
;;; ceh-light-theme.el ends here

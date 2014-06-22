(server-start)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(electric-pair-mode t)
 '(exec-path
   (quote (
           "/usr/bin"
           "/bin"
           "/usr/sbin"
           "/sbin"
           "/Applications/Emacs.app/Contents/MacOS/bin"
           "/usr/local/bin"
           )))
 '(global-linum-mode t)
 '(icicle-mode t)
 '(inhibit-startup-screen t)
 '(package-archives (quote (
                            ("gnu" . "http://elpa.gnu.org/packages/")
                            ("marmalade" . "http://marmalade-repo.org/packages/")
                            ("melpa" . "http://melpa.milkbox.net/packages/")
                            )))
 '(smart-compile-alist (quote (
                               (emacs-lisp-mode emacs-lisp-byte-compile)
                               (html-mode browse-url-of-buffer)
                               (nxhtml-mode browse-url-of-buffer)
                               (html-helper-mode browse-url-of-buffer)
                               (octave-mode run-octave)
                               ("\\.c\\'" . "gcc -O2 %f -lm -o %n")
                               ("\\.[Cc]+[Pp]*\\'" . "g++ -O2 %f -lm -o %n")
                               ("\\.m\\'" . "gcc -O2 %f -lobjc -lpthread -o %n")
                               ("\\.java\\'" . "javac %f")
                               ("\\.php\\'" . "php -l %f")
                               ("\\.f90\\'" . "gfortran %f -o %n")
                               ("\\.[Ff]\\'" . "gfortran %f -o %n")
                               ("\\.cron\\(tab\\)?\\'" . "crontab %f")
                               ("\\.tex\\'" tex-file)
                               ("\\.texi\\'" . "makeinfo %f")
                               ("\\.mp\\'" . "mptopdf %f")
                               ("\\.pl\\'" . "perl -cw %f")
                               ("\\.rb\\'" . "ruby -cw %f")
                               ("\\.md\\'" . "mdpress")
                               )))
 '(visible-bell nil)
 '(whitespace-line-column 80)
 '(whitespace-style (quote (
                            face
                            tabs
                            spaces
                            trailing
                            lines-tail
                            space-before-tab
                            newline indentation
                            empty
                            space-after-tab
                            space-mark
                            tab-mark
                            newline-mark
                            ))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; UI tweaks
(setq ring-bell-function `(lambda ()
                            (set-face-background 'default "black")
                            (set-face-background 'default "white")))
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(load-file "~/emacs.d/global-keybindings.el")

(load-file "~/emacs.d/modes.el")

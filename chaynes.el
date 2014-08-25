(require 'cask "~/.emacs.d/.cask/24.2.3/elpa/cask-20140815.26/cask.el")
(cask-initialize)

(server-start)

;; UI tweaks
(setq ring-bell-function `(lambda ()
                            (set-face-background 'default "black")
                            (set-face-background 'default "white")))
(put 'downcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

(load-file "~/emacs.d/global-keybindings.el")

(load-file "~/emacs.d/modes.el")

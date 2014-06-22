;; global keybindings
(global-set-key "\C-^" 'delete-indentation)
(global-set-key "\C-xg" 'magit-status)
(global-set-key "\C-xm" 'compile)
(global-set-key "\C-x\C-g" 'grep)
(global-set-key [f4] 'revert-buffer)    ; F4

;;; fancy go to beginning of line
(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or beginning-of-line.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive "^") ; Use (interactive "^") in Emacs 23 to make shift-select work
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

(global-set-key "\C-a" 'smart-beginning-of-line)

;;; (global-set-key "<left-margin><drag-mouse-1>" 'mouse-set-region)
;;; (global-set-key "<left-margin><down-mouse-1>" 'mouse-set-region)


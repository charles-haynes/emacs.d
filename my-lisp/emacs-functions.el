;;; package --- emacs-functions
;;; Commentary:
;;; Code:

;;; fancy go to beginning of line
(defun smart-beginning-of-line ()
  "Move point to first non-whitespace character or 'beginning-of-line'.

Move point to the first non-whitespace character on this line.
If point was already at that position, move point to beginning of line."
  (interactive "^") ; Use (interactive "^") in Emacs 23 to make shift-select work
  (let ((oldpos (point)))
    (back-to-indentation)
    (and (= oldpos (point))
         (beginning-of-line))))

;; sort words in region
(defun sort-words (reverse beg end)
"Sort words in region alphabetically; negative argument means descending order.
Called from a program, there are three arguments:
REVERSE (non-nil means reverse order), BEG and END (region to sort).
The variable ‘sort-fold-case’ determines whether alphabetic case affects
the sort order.

See `sort-regexp-fields'."
  (interactive "*P\nr")
  (sort-regexp-fields reverse "\\w+" "\\&" beg end))

(defun sort-symbols (reverse beg end)
"Sort symbols in region alphabetically;
negative argument means in descending order.
Symbols are like words, but include additional characters,
that vary with the language.
Called from a program, there are three arguments:
REVERSE (non-nil means reverse order), BEG and END (region to sort).
The variable ‘sort-fold-case’ determines whether alphabetic case affects
the sort order.

See `sort-words'."
      (interactive "*P\nr")
      (sort-regexp-fields reverse "\\(\\sw\\|\\s_\\)+" "\\&" beg end))

;; UI tweaks
(defun blink-mode-line ()
   "Blinks the mode line, useful as a visible bell."
   (invert-face 'mode-line)
   (run-with-timer 0.1 nil 'invert-face 'mode-line))

(defun no-ding-filter ()
  "Do not call blink-mode-line if command in list."
  (unless (memq this-command
        ;; '(isearch-abort abort-recursive-edit exit-minibuffer
        ;;       keyboard-quit mwheel-scroll down up next-line previous-line
        ;;       backward-char forward-char))
        '(mwheel-scroll))
    (blink-mode-line)))

(setq visible-bell nil ring-bell-function 'no-ding-filter)
(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'emacs-functions)

;;; emacs-functions ends here

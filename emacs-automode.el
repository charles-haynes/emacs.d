;;; package --- emacs-automode

;;; Commentary:

;;; Code:

(defun auto-mode (path mode)
  "When loading PATH set MODE."
  (add-to-list 'auto-mode-alist (cons path mode)))

(auto-mode "Cakefile" 'coffee-mode)
(auto-mode "Gemfile$" 'ruby-mode)
(auto-mode "RAKEFILE$" 'ruby-mode)
(auto-mode "Rakefile$" 'ruby-mode)
(auto-mode "\\.coffee$" 'coffee-mode)
(auto-mode "\\.cs$" 'csharp-mode)
(auto-mode "\\.css$" 'css-mode)
(auto-mode "\\.gemspec$" 'ruby-mode)
(auto-mode "\\.html?$" 'html-mode)
(auto-mode "\\.js$" 'js2-mode)
(auto-mode "\\.markdown$" 'markdown-mode)
(auto-mode "\\.md$" 'markdown-mode)
(auto-mode "\\.org$" 'org-mode)
(auto-mode "\\.pp$" 'puppet-mode)
(auto-mode "\\.py$" 'python-mode)
(auto-mode "\\.rake$" 'ruby-mode)
(auto-mode "\\.rb$" 'ruby-mode)
(auto-mode "\\.sass$" 'css-mode)
(auto-mode "\\.scss$" 'css-mode)
(auto-mode "\\.spec$" 'ruby-mode)
(auto-mode "\\.sql$" 'sql-mode)
(auto-mode "\\.text$" 'markdown-mode)
(auto-mode "\\.xhtml$" 'nxml-mode)
(auto-mode "\\.xml$" 'nxml-mode)
(auto-mode "\\.xsd$" 'nxml-mode)
(auto-mode "\\.yml$" 'yaml-mode)
(auto-mode "rakefile$" 'ruby-mode)

(add-to-list 'magic-mode-alist '("<＼＼?xml " . nxml-mode))

(fset 'xml-mode 'nxml-mode)

(provide 'emacs-automode)

;;; emacs-automode ends here

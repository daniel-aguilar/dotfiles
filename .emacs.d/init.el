(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(global-display-line-numbers-mode 1)
(show-paren-mode 1)

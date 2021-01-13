(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(global-display-line-numbers-mode 1)
(show-paren-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-default 'truncate-lines t)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(set-frame-font "Inconsolata 12" nil t)

(setq package-selected-packages
      '(neotree zenburn-theme yaml-mode dockerfile-mode minimap))
(load-theme 'zenburn t)
(global-set-key [f8] 'neotree-toggle)
(setq minimap-window-location 'right)

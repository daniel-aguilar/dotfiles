(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(global-display-line-numbers-mode 1)
(show-paren-mode 1)
(line-number-mode 1)
(column-number-mode 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)
(set-default 'truncate-lines t)
(setq backup-directory-alist '(("." . "~/.emacs.d/backups")))
(set-frame-font "Inconsolata" nil t)

(load-theme 'solarized-light t)
(setq minimap-window-location 'right)
(setq magit-diff-refine-hunk 'all)
(global-set-key (kbd "C-c a") 'org-agenda)

(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(add-hook 'dockerfile-mode-hook
	  (lambda ()
	    (setq-default indent-tabs-mode t)
	    (setq-default tab-width 4)))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq package-selected-packages '(php-mode editorconfig
      exec-path-from-shell solarized-theme markdown-mode magit
      yaml-mode dockerfile-mode minimap))

(require 'package)
(require 'cl)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; Install plugins
(load "~/.emacs.d/plugins.el")

;; Setup Editor
(load "~/.emacs.d/editor.el")

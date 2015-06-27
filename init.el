;;; init.el --- Main Configuration

(require 'cask "~/.cask/cask.el")
(defun setup ()
  (defvar root-dir (file-name-directory load-file-name))
  (defvar core-dir (expand-file-name "core" root-dir))
  (defvar module-dir (expand-file-name "modules" root-dir))
  (add-to-list 'load-path core-dir)
  (add-to-list 'load-path module-dir))

(defun load-packages ()
  (require 'use-package)
  (use-package system))

(defun load-modules ()
  (use-package ui)
  (use-package project)
  (use-package programming)
  (use-package ruby)
  (use-package coffee)
  (use-package angularjs)
  )

(defun init ()
  (setup)
  (cask-initialize)
  (load-packages)
  (load-modules))
(init)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(flycheck-display-errors-function (function flycheck-pos-tip-error-messages))
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

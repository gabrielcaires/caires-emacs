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
  (use-package system)
  (use-package pallet
	:config
	(pallet-mode 1)
	)

  )

;;; TODO Change all names to {something}-config
(defun load-modules ()
  (use-package ui-config)
  (use-package project-config)
  (use-package programming)
  (use-package ruby-config)
  (use-package coffee)
  (use-package web)
  (use-package evil-config)
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
 '(custom-safe-themes
   (quote
	("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(helm-ag-base-command "ack --nocolor --nogroup")
 '(paradox-github-token t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

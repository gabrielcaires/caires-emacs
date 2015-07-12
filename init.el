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

;;; TODO Change all names to {something}-config
(defun load-modules ()
  (use-package ui-config)
  (use-package project)
  (use-package programming)
  (use-package ruby)
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

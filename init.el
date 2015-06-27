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
  (use-package ruby)
  (use-package ui))

(defun init ()
  (setup)
  (cask-initialize)
  (load-packages)
  (load-modules))

(init)

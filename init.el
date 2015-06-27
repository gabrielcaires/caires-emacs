(require 'cask "~/.cask/cask.el")

(defun setup ()
  (defvar root-dir (file-name-directory load-file-name))
  (defvar core-dir (expand-file-name "core" root-dir))
  (add-to-list 'load-path core-dir))

(defun load-packages ()
  (require 'editor))

(defun init ()
  (setup)
  (cask-initialize)
  (load-packages))

(init)

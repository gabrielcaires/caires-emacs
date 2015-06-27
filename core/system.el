;; --  Editor configurations
;; Linum
(global-linum-mode t)

(eval-after-load 'linum
  '(progn
     (defface linum-leading-zero
       `((t :inherit 'linum
	    :foreground ,(face-attribute 'linum :background nil t)))
       "Face for displaying leading zeroes for line numbers in display margin."
       :group 'linum)
     (defun linum-format-func (line)
       (let ((w (length
		 (number-to-string (count-lines (point-min) (point-max))))))
	 (concat
	  (propertize (make-string (- w (length (number-to-string line))) ?0)
		      'face 'linum)
	  (propertize (number-to-string line) 'face 'linum)
	   "\u2502"
	  )))
     (setq linum-format 'linum-format-func)))

;; Menu && toolbar
(toggle-scroll-bar -1)
(menu-bar-mode -1)


;; Battery
(display-battery-mode 1)

;; mode line settings
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Initial Startup
(setq inhibit-startup-message t)

(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)
(setq ns-function-modifier 'hyper)

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

;; Tab configurations
(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces

;; Remove white space
(add-hook 'before-save-hook 'whitespace-cleanup)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;; Newline at end of file
(setq require-final-newline t)

;; delete the selection with a keypress
(delete-selection-mode t)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
      `((".*" ,temporary-file-directory t)))

;; autosave the undo-tree history
(setq undo-tree-history-directory-alist
      `((".*" . ,temporary-file-directory)))
(setq undo-tree-auto-save-history t)

;; Theme
(load-theme 'zenburn t)

;; disable annoying blink-matching-paren
(setq blink-matching-paren nil)

(global-hl-line-mode 1)
(set-face-background 'hl-line "#330")

(provide 'system)

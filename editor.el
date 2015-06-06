;; --  Editor configurations

;; Linum
(global-linum-mode t)
(setq linum-format "%4d \u2502 ")

;; Menu && toolbar
(toggle-scroll-bar -1)
(menu-bar-mode -1)

;; Initial Startup
(setq inhibit-startup-message t)

;; Tab configurations
(setq c-basic-offset 4) ; indents 4 chars
(setq tab-width 4)          ; and 4 char wide for TAB
(setq indent-tabs-mode nil) ; And force use of spaces

;; Remove white space
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Theme
(load-theme 'zenburn t)

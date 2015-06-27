(use-package powerline
  :config
  (powerline-raw mode-line-mule-info nil 'l)
  :init
  (powerline-default-theme))

(use-package indent-guide
  :config
  (indent-guide-global-mode))

(provide 'ui)

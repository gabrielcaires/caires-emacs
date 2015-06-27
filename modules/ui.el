(use-package powerline
  :config
  (powerline-raw mode-line-mule-info nil 'l)
  :init
  (powerline-default-theme))

(use-package highlight-indentation
  :diminish highlight-indentation-mode
  :defer 2
  :config
  (highlight-indentation-mode 1)
  )



(provide 'ui)

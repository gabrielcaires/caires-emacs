(defun init-ui-config ()
  (use-package powerline
    :defer 2
    :config
    (powerline-vim-theme))
  )

(init-ui-config)
(provide 'ui-config)

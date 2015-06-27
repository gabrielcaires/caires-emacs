(defun init-javascript ()
  (use-package coffee-mode
    :config
    (defun active-coffee ()
      (message "Active Coffee")
      (whitespace-mode t)
      (custom-set-variables '(coffee-tab-width 2))
      (setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab)))
    (add-hook 'coffee-mode-hook 'active-coffee))
  )
(init-javascript)
(provide 'coffee)
;;; javascript.el ends here

(defun init-angular ()
  (message "Initialize AngularJS module")
  (use-package angular-snippets)
  )

(add-hook 'coffee-mode-hook 'init-angular)
(provide 'angularjs)

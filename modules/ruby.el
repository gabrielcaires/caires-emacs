(eval-when-compile
    (require 'use-package))
(require 'diminish)                ;; if you use :diminish
(require 'bind-key)
(use-package rvm
	     :init
	     (add-hook 'ruby-mode-hook
		       (lambda () (rvm-activate-corresponding-ruby))))
(provide 'ruby)

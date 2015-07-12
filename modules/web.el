;;; web.el --- Configuration for web files
;;; Commentary:
;;; Code:
(defun init-web ()
  (message "Initialize Web module")
  (use-package web-mode
    :defer 2
    :config
    (setq web-mode-enable-current-column-highlight t)
    (setq web-mode-enable-current-element-highlight t)
    (setq web-mode-extra-auto-pairs
	  '(
	    ("erb"  . (("if" "end")))
		   ))
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    :mode("\\.erb\\'" . web-mode))
  )

(init-web)
(provide 'web)
;;; web.el ends here

;;; web.el --- Configuration for web files
;;; Commentary:
;;; Code:
(defun init-web ()
  (message "Initialize Web module")
  (use-package js2-mode
    :mode ("\\.js\\'" . js2-mode)
    :config
    (setq-default js2-basic-offset 2)
    (setq js2-missing-semi-one-line-override t)
    (add-hook 'js2-mode-hook (lambda () (jasminejs-mode)))
  
    (defun rli-add-jasmine-externs()
      (when (string-match "_spec.js" (buffer-file-name))
        (setq j2s-additional-externs 
              '("describe" "it" "expect" "spyOn" "jasmine")))
      )
    (add-hook 'js2-mode-hook 'rli-add-jasmine-externs)

    )
  (use-package web-mode
    :defer 2
    :config
    (setq web-mode-enable-current-column-highlight t)
    (setq web-mode-enable-current-element-highlight t)
    (setq-default indent-tabs-mode nil)
    (setq web-mode-code-indent-offset 2)
    (setq web-mode-css-indent-offset 2)
    (setq js-indent-level 2)
    (setq web-mode-extra-auto-pairs
      '(
        ("erb"  . (("if" "end")))
           ))
    (setq web-mode-markup-indent-offset 2)
    (setq web-mode-code-indent-offset 2)
    :mode("\\.erb\\'" . web-mode)
    :mode("\\.html\\'" . web-mode))

  )

(init-web)
(provide 'web)
;;; web.el ends here
